from rest_framework import serializers
from django.conf import settings

from home.models import Home, Momento
from user.models import Contato


class ContatoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contato
        fields = '__all__'


class MomentoSerializer(serializers.ModelSerializer):
    capaURL = serializers.SerializerMethodField()
    tipoName = serializers.SerializerMethodField()

    def get_capaURL(self, obj):
        return obj.capaURL

    def get_tipoName(self, obj):
        return obj.get_tipo_display()

    class Meta:
        model = Momento
        fields = ('tipo', 'tipoName', 'capaURL')


class HomeSerializer(serializers.ModelSerializer):
    carrossel = serializers.SerializerMethodField()
    profile_foto = serializers.SerializerMethodField()
    frase_img = serializers.SerializerMethodField()
    momentos = serializers.SerializerMethodField()
    pacotes = serializers.SerializerMethodField()
    contato_image = serializers.SerializerMethodField()
    instagram_feels = serializers.SerializerMethodField()

    def get_carrossel(self, home):
        return list(home.carrossel)

    def get_frase_img(self, home):
        return settings.BASE_MEDIA_URL + home.frase_img.foto.url

    def get_profile_foto(self, home):
        return settings.BASE_MEDIA_URL + home.profile_foto.foto.url

    def get_momentos(self, home):
        return [
            dict(momento)
            for momento in Momento.objects.exclude(tipo='default').distinct('tipo')[:3]
        ]

    def get_pacotes(self, home):
        return [dict(pacote) for pacote in home.pacotes.all()]

    def get_contato_image(self, home):
        return settings.BASE_MEDIA_URL + home.contato_image.foto.url

    def get_instagram_feels(self, home):
        return list(home.instagram_feels)

    class Meta:
        model = Home
        fields = '__all__'
