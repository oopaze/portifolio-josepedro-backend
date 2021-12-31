from rest_framework.generics import CreateAPIView, ListAPIView
from rest_framework.response import Response
from rest_framework.decorators import api_view

from user.models import Contato
from home.models import Home, Momento
from core.models import Imagem
from booking.models import Booking
from .serializers import (
    BookingSerializer,
    ContatoSerializer,
    HomeSerializer,
    ImagemSerializer,
    MomentoSerializer,
)


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


class ImagemListAPIView(ListAPIView):
    serializer_class = ImagemSerializer
    model = Imagem
    paginate_by = 30

    def get_queryset(self):
        try:
            booking_id = self.kwargs.get('booking_id', -1)
            booking_instance = Booking.objects.get(pk=booking_id)

            return booking_instance.fotos.all()
        except Booking.DoesNotExist:
            pass

        return Imagem.objects.all().order_by('foto')


class BookingListAPIView(ListAPIView):
    serializer_class = BookingSerializer
    model = Booking

    def get_queryset(self):
        filter_kw = {}

        if self.kwargs.get('tipo') != 'ALL':
            filter_kw['tipo'] = self.kwargs['tipo']

        return Booking.objects.filter(**filter_kw)


class ContatoCreateAPIView(CreateAPIView):
    serializer_class = ContatoSerializer
    model = Contato

    def get_queryset(self):
        return Contato.objects.none()
