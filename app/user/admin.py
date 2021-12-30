from django.contrib import admin

from user.models import Contato


@admin.register(Contato)
class ContatoAdmin(admin.ModelAdmin):
    ...
