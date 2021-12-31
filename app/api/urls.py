from django.urls import path

from .views import (
    home_data_api_view,
    ContatoCreateAPIView,
    MomentoListAPIView,
    BookingListAPIView,
)


urlpatterns = [
    path('', home_data_api_view, name="home"),
    path('new/contact/', ContatoCreateAPIView.as_view(), name="contato"),
    path('momentos/', MomentoListAPIView.as_view(), name='momentos'),
    path('bookings/<str:tipo>/', BookingListAPIView.as_view(), name='bookings'),
]
