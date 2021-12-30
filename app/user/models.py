from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    email = models.EmailField(max_length=254, unique=True, verbose_name='email address')

    username = models.CharField(
        "Nome do Usuário", max_length=150, null=True, blank=True
    )

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['first_name', 'last_name', 'username']


class Contato(models.Model):
    nome = models.CharField(max_length=100)
    celular = models.CharField(max_length=20)
    email = models.CharField(max_length=40)
    motivo_orcamento = models.CharField(max_length=200)
    onde_me_achou = models.CharField(max_length=200)
    mensagem = models.TextField(max_length=255)

    def __str__(self):
        return f"{self.nome} [{self.celular}]"
