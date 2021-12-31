import zipfile
import sys
from PIL import Image
from io import BytesIO

from django.core.files.uploadedfile import InMemoryUploadedFile

from core.models import Imagem


class HandleUnzipImages(object):
    def __init__(self, instance, zipfile) -> None:
        self.instance = instance
        self.zipfile = zipfile

    def start_save_all_images(self):
        self.image_instances = []
        images = self.open_zip()
        self.extract_images(images)
        self.save(self.image_instances)

    def save(self, instances):
        try:
            Imagem.objects.bulk_create(instances)
            self.instance.fotos.add(*instances)
        except Exception as e:
            print(e)

    def extract_images(self, images):
        for image in images:
            img_extension = image['name'].split('.')[-1].upper()
            img_name = image['name'].split('.')[0].upper()

            img_io = BytesIO(image['file'])

            new_image = InMemoryUploadedFile(
                img_io,
                'ImageField',
                image['name'],
                img_extension,
                sys.getsizeof(img_io),
                None,
            )

            self.create_image_instance(new_image)

    def create_image_instance(self, image_file):
        image_instance = Imagem(tipo=self.instance.tipo, foto=image_file)
        self.image_instances.append(image_instance)
        return image_instance

    def open_zip(self):
        with zipfile.ZipFile(self.zipfile, 'r') as zip:
            img_files = [
                {'name': name, 'file': zip.read(name)} for name in zip.namelist()
            ][:10]
        return img_files
