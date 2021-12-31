from rest_framework import serializers
from django.conf import settings

from core.models import Imagem
from home.models import Home, Momento
from user.models import Contato
from booking.models import Booking


class ImagemSerializer(serializers.ModelSerializer):
    title = serializers.CharField(source='get_tipo_display')
    img = serializers.CharField(source='foto_full_url')

    class Meta:
        model = Imagem
        fields = ('title', 'img')


class ContatoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contato
        fields = '__all__'


class MomentoSerializer(serializers.ModelSerializer):
    capaUrl = serializers.SerializerMethodField()
    tipoAbbreviation = serializers.CharField(source='tipo')
    tipo = serializers.CharField(source='get_tipo_display')

    def get_capaUrl(self, obj):
        return obj.capaURL

    class Meta:
        model = Momento
        fields = ('tipo', 'tipoAbbreviation', 'capaUrl')


class BookingSerializer(serializers.ModelSerializer):
    capaUrl = serializers.SerializerMethodField()

    def get_capaUrl(self, obj):
        return settings.BASE_MEDIA_URL + obj.capa.foto.url

    class Meta:
        model = Booking
        fields = ('id', 'capaUrl', 'titulo', 'comentario')


class HomeSerializer(serializers.ModelSerializer):
    carrossel = serializers.SerializerMethodField()
    profile_foto = serializers.SerializerMethodField()
    frase_img = serializers.SerializerMethodField()
    momentos = serializers.SerializerMethodField()
    contato_image = serializers.SerializerMethodField()
    instagram_feels = serializers.SerializerMethodField()
    galeria = serializers.SerializerMethodField()

    def get_galeria(self, home):
        return [
            {
                'title': imagem.get_tipo_display(),
                'img': imagem.foto_full_url,
            }
            for imagem in Imagem.objects.all().order_by('foto')[:9]
        ]

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

    def get_contato_image(self, home):
        return settings.BASE_MEDIA_URL + home.contato_image.foto.url

    def get_instagram_feels(self, home):
        return list(home.instagram_feels)

    class Meta:
        model = Home
        fields = '__all__'
