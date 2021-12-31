from django import forms

from core.models import Imagem
from booking.models import Booking
from core.choices import TIPOS
from .handles.HandleUnzipImages import HandleUnzipImages


class BookingUpdateForm(forms.ModelForm):
    def save(self, *args, **kwargs):
        instance = super().save(*args, **kwargs)
        instance.fotos.all().update(tipo=instance.tipo)
        return instance

    class Meta:
        model = Booking
        fields = ('titulo', 'tipo', 'comentario', 'capa', 'fotos')


class ImportBookingForm(forms.ModelForm):
    _titulo = forms.CharField(
        label="Título",
        max_length=255,
        required=True,
        widget=forms.TextInput(attrs={'placeholder': 'João e Maria'}),
    )
    _comentario = forms.CharField(
        label="Comentário",
        max_length=255,
        widget=forms.Textarea(attrs={'maxlength': 210}),
        required=True,
    )
    _tipo = forms.ChoiceField(label='Tipo', choices=TIPOS, required=True)
    _capa = forms.FileField(
        label="Foto de Apresentação",
        required=True,
        widget=forms.FileInput(attrs={'accept': "image/png, image/gif, image/jpeg"}),
    )
    _imagens = forms.FileField(
        label="Pasta Zipada com Imagens",
        widget=forms.FileInput(attrs={'accept': ".zip,.rar,.7zip"}),
        required=False,
    )

    def save(self, *args, **kwargs):
        tipo = self.cleaned_data.get('_tipo')
        capa_img_instance = Imagem.objects.create(
            tipo=tipo, foto=self.cleaned_data['_capa']
        )

        instance = Booking.objects.create(
            capa=capa_img_instance,
            tipo=tipo,
            titulo=self.cleaned_data['_titulo'],
            comentario=self.cleaned_data['_comentario'],
        )

        unzip_handle = HandleUnzipImages(instance, self.cleaned_data['_imagens'])
        unzip_handle.start_save_all_images()

        return instance

    def save_m2m(self, *args, **kwargs):
        return None

    class Meta:
        model = Booking
        fields = ('_titulo', '_tipo', '_comentario', '_capa', '_imagens')
