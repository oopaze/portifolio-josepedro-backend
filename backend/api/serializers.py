from functools import partial

from rest_framework import serializers

from home.models import Home


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
        return home.frase_img.foto.url

    def get_profile_foto(self, home):
        return home.profile_foto.foto.url

    def get_momentos(self, home):
        return [list(momento) for momento in home.momentos.all()]

    def get_pacotes(self, home):
        return [dict(pacote) for pacote in home.pacotes.all()]

    def get_contato_image(self, home):
        return home.contato_image.foto.url

    def get_instagram_feels(self, home):
        return list(home.instagram_feels)
 
    class Meta:
        model = Home
        fields = '__all__'