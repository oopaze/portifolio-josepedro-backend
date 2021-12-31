from django.urls import path

from .views import (
    home_data_api_view,
    ContatoCreateAPIView,
    MomentoListAPIView,
    BookingListAPIView,
    ImagemListAPIView,
)


urlpatterns = [
    path('', home_data_api_view, name="home"),
    path('new/contact/', ContatoCreateAPIView.as_view(), name="contato"),
    path('momentos/', MomentoListAPIView.as_view(), name='momentos'),
    path('bookings/<str:tipo>/', BookingListAPIView.as_view(), name='bookings_filtred'),
    path(
        'bookings/fotos/<int:booking_id>/', ImagemListAPIView.as_view(), name='imagens'
    ),
]
