from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    email = models.EmailField(
        max_length=254, 
        unique=True,
        verbose_name='email address'
    )
    
    username = models.CharField(
        "Nome do Usuário",
        max_length=150,
        null=True, blank=True
    )

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['first_name', 'last_name', 'username']