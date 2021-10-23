from django.shortcuts import render
from rest_framework.generics import ListAPIView

from home.models import Home
from .serializers import HomeSerializer


class HomeListApiView(ListAPIView):
    model = Home
    serializer_class = HomeSerializer
    queryset = Home.objects.all()