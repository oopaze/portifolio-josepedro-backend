from django.shortcuts import render
from rest_framework.generics import ListAPIView
from rest_framework.response import Response
from rest_framework.decorators import api_view

from home.models import Home
from .serializers import HomeSerializer


class HomeListApiView(ListAPIView):
    model = Home
    serializer_class = HomeSerializer
    queryset = Home.objects.all()


@api_view(['GET'])
def home_data_api_view(request):
    instance = Home.objects.all().first()
    data = HomeSerializer(instance=instance).data

    return Response(data)