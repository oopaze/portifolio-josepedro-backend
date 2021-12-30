from django.shortcuts import render
from rest_framework.generics import CreateAPIView
from rest_framework.response import Response
from rest_framework.decorators import api_view

from user.models import Contato
from home.models import Home
from .serializers import ContatoSerializer, HomeSerializer


@api_view(['GET'])
def home_data_api_view(request):
    instance = Home.objects.all().first()
    data = HomeSerializer(instance=instance).data

    return Response(data)


class ContatoCreateAPIView(CreateAPIView):
    serializer_class = ContatoSerializer
    model = Contato

    def get_queryset(self):
        return Contato.objects.none()
