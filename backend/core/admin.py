from django.contrib import admin

from .models import Imagem


@admin.register(Imagem)
class ImagemAdmin(admin.ModelAdmin):
    ordering = ('foto',)