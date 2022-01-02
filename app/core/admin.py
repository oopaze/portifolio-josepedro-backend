from django.contrib import admin
from django.utils.html import mark_safe
from django.conf import settings

from .models import Imagem


@admin.register(Imagem)
class ImagemAdmin(admin.ModelAdmin):
    ordering = ('foto',)
    readonly_fields = ('image_tag',)
    list_display = ('__str__', 'disponivel_galeria', 'tipo', 'image_tag')
