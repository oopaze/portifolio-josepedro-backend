from django.db import models


class Imagem(models.Model):
    CASAMENTO = 'casamento'
    PREWEDDING = 'prewedding'
    ANIVERSARIO = 'aniversario'
    FORMATURA = 'formatura'
    ESTUDIO = 'estudio'

    TIPOS = (
        (CASAMENTO, 'Casamento'),
        (PREWEDDING, 'Pré Wedding'),
        (ANIVERSARIO, 'Aniversário'),
        (FORMATURA, 'Formatura'),
        (ESTUDIO, 'Estúdio')
    )


    foto = models.ImageField('foto', upload_to='imagens')
    tipo = models.CharField(
        "Tipo", 
        max_length=20, 
        choices=TIPOS, 
        null=True, 
        blank=True
    )

    def __str__(self):
        return f"{self.foto.name.split('/')[-1]}"


    class Meta:
        verbose_name_plural = 'Imagens'