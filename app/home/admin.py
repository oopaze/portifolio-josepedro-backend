from django.contrib import admin

from . import models


@admin.register(models.Carrossel)
class Carrosel(admin.ModelAdmin):
    ...


@admin.register(models.Momento)
class MomentoAdmin(admin.ModelAdmin):
    ...


@admin.register(models.InstagramFeel)
class InstagramFeelAdmin(admin.ModelAdmin):
    ...


@admin.register(models.Home)
class Home(admin.ModelAdmin):
    ...
