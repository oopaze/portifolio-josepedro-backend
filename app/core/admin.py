from django.contrib import admin
from django.utils.html import mark_safe
from django.conf import settings

from .models import Imagem


@admin.register(Imagem)
class ImagemAdmin(admin.ModelAdmin):
    ordering = ('foto',)
    readonly_fields = ('image_tag',)

    def image_tag(self, obj):
        return mark_safe('<img src="%s" />' % (settings.BASE_MEDIA_URL + obj.foto.url))

    image_tag.short_description = 'Image'
    image_tag.allow_tags = True
