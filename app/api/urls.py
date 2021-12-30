from django.urls import path

from .views import home_data_api_view, ContatoCreateAPIView


urlpatterns = [
    path('', home_data_api_view, name="home"),
    path('new/contact/', ContatoCreateAPIView.as_view(), name="contato"),
]
