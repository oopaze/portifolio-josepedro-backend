from django.db import models


class Imagem(models.Model):
    foto = models.ImageField('foto', upload_to='imagens')

    def __str__(self):
        return f"{self.foto.name.split('/')[-1]}"


    class Meta:
        verbose_name_plural = 'Imagens'