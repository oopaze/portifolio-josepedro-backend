from django.db import models
from django.conf import settings

from core.choices import DEFAULT, TIPOS
from core.models import TimeStampedModel


class Booking(TimeStampedModel):
    titulo = models.CharField(max_length=100)
    comentario = models.TextField(max_length=255, null=True, blank=True)
    tipo = models.CharField(max_length=20, choices=TIPOS, default=DEFAULT)

    fotos = models.ManyToManyField('core.Imagem', blank=True)
    capa = models.ForeignKey(
        'core.Imagem',
        on_delete=models.SET_NULL,
        related_name='booking_capa',
        null=True,
        blank=True,
    )

    def __str__(self):
        return f'{self.titulo} ({self.id})'
