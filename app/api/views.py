from rest_framework.generics import CreateAPIView, ListAPIView
from rest_framework.response import Response
from rest_framework.decorators import api_view

from user.models import Contato
from home.models import Home, Momento
from .serializers import ContatoSerializer, HomeSerializer, MomentoSerializer


@api_view(['GET'])
def home_data_api_view(request):
    instance = Home.objects.all().first()
    data = HomeSerializer(instance=instance).data

    return Response(data)


class MomentoListAPIView(ListAPIView):
    serializer_class = MomentoSerializer
    model = Momento

    def get_queryset(self):
        return Momento.objects.all().distinct('tipo')


class ContatoCreateAPIView(CreateAPIView):
    serializer_class = ContatoSerializer
    model = Contato

    def get_queryset(self):
        return Contato.objects.none()
