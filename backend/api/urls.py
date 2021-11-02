from django.urls import path

from .views import HomeListApiView, home_data_api_view


urlpatterns = [
    path('', home_data_api_view, name="home")
]