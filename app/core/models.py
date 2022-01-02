from django.db import models
from django.utils.html import mark_safe
from django.utils.timezone import now
from django.conf import settings

from .choices import TIPOS, DEFAULT


class TimeStampedModel(models.Model):
    criado_em = models.DateTimeField('Criado em', auto_now_add=True)
    atualizado_em = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        abstract = True


class Imagem(TimeStampedModel):
    foto = models.ImageField('foto', upload_to='imagens')
    tipo = models.CharField("Tipo", max_length=20, choices=TIPOS, default=DEFAULT)
    disponivel_galeria = models.BooleanField('Disponível para galeria?', default=True)

    def image_tag(self):
        return mark_safe(
            '<figure><img src="%s" style="height:200px;" />' % self.foto.url
        )

    image_tag.short_description = 'Image'
    image_tag.allow_tags = True

    @property
    def foto_full_url(self):
        return settings.BASE_MEDIA_URL + self.foto.url

    def __str__(self):
        return f"{self.foto.name.split('/')[-1]}"

    class Meta:
        verbose_name_plural = 'Imagens'
