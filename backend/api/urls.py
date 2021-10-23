from django.urls import path

from .views import HomeListApiView


urlpatterns = [
    path('', HomeListApiView.as_view(), name="home")
]