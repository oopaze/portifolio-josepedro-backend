from django.db import models
from django.conf import settings


class Momento(models.Model):
    DEFAULT = "default"
    CASAMENTO = 'CA'
    PRE_WEDDING = 'PW'
    GESTANTE = 'GE'
    CORPORATIVA = 'CORP'
    ENSAIOS_INDIVIDUAIS = 'EI'
    TIPOS = (
        (DEFAULT, "Padrão"),
        (CASAMENTO, 'Casamento'),
        (PRE_WEDDING, 'Pré-Wedding'),
        (GESTANTE, 'Gestante'),
        (CORPORATIVA, 'Corporativa'),
        (ENSAIOS_INDIVIDUAIS, 'Ensaios Individuais'),
    )

    capa = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='capa'
    )
    tipo = models.CharField("Tipo", max_length=20, choices=TIPOS, default=DEFAULT)

    def __iter__(self):
        yield 'tipo', self.get_tipo_display()
        yield 'capaUrl', settings.SITE_URL + self.capa.foto.url

    def __str__(self):
        return f"Momento {self.id}"


class Pacote(models.Model):
    titulo = models.CharField('Título', max_length=100)
    imagem_fundo = models.ForeignKey('core.Imagem', on_delete=models.CASCADE)

    def __iter__(self):
        yield 'imagem', settings.SITE_URL + self.imagem_fundo.foto.url
        yield 'titulo', self.titulo

    def __str__(self):
        return f"Pacote {self.titulo}"


class InstagramFeel(models.Model):
    instagram_1 = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='instagram_1'
    )
    instagram_2 = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='instagram_2'
    )
    instagram_3 = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='instagram_3'
    )
    instagram_4 = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='instagram_4'
    )
    instagram_5 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='instagram_5',
        null=True,
        blank=True,
    )
    instagram_6 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='instagram_6',
        null=True,
        blank=True,
    )
    instagram_7 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='instagram_7',
        null=True,
        blank=True,
    )
    instagram_8 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='instagram_8',
        null=True,
        blank=True,
    )

    def __iter__(self):
        yield settings.SITE_URL + self.instagram_1.foto.url
        yield settings.SITE_URL + self.instagram_2.foto.url
        yield settings.SITE_URL + self.instagram_3.foto.url
        yield settings.SITE_URL + self.instagram_4.foto.url
        yield settings.SITE_URL + self.instagram_5.foto.url
        yield settings.SITE_URL + self.instagram_6.foto.url
        yield settings.SITE_URL + self.instagram_7.foto.url
        yield settings.SITE_URL + self.instagram_8.foto.url


class Carrossel(models.Model):
    carrossel_1 = models.ForeignKey(
        'core.Imagem', on_delete=models.CASCADE, related_name='carrossel_1'
    )
    carrossel_2 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='carrossel_2',
        null=True,
        blank=True,
    )
    carrossel_3 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='carrossel_3',
        null=True,
        blank=True,
    )
    carrossel_4 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='carrossel_4',
        null=True,
        blank=True,
    )
    carrossel_5 = models.ForeignKey(
        'core.Imagem',
        on_delete=models.CASCADE,
        related_name='carrossel_5',
        null=True,
        blank=True,
    )

    def __iter__(self):
        yield settings.SITE_URL + self.carrossel_1.foto.url
        yield settings.SITE_URL + self.carrossel_2.foto.url
        yield settings.SITE_URL + self.carrossel_3.foto.url
        yield settings.SITE_URL + self.carrossel_4.foto.url
        yield settings.SITE_URL + self.carrossel_5.foto.url

    def __str__(self):
        return f"Carrossel {self.id}"

    class Meta:
        verbose_name_plural = 'Carrosseis'


class Home(models.Model):
    # corresel inicial
    carrossel = models.ForeignKey(Carrossel, models.PROTECT)

    # sobre mim
    profile_foto = models.ForeignKey(
        'core.Imagem', on_delete=models.PROTECT, related_name='profile'
    )
    profile_resumo = models.TextField('Resumo')

    # momentos
    momentos = models.ManyToManyField(Momento)

    # pacotes
    pacotes = models.ManyToManyField(Pacote)

    # frase
    frase_img = models.ForeignKey(
        'core.Imagem',
        on_delete=models.PROTECT,
        related_name='frase_img',
        null=True,
        blank=True,
    )

    # contato
    contato_image = models.ForeignKey('core.Imagem', on_delete=models.PROTECT)

    # instagram feels
    instagram_feels = models.ForeignKey(InstagramFeel, on_delete=models.PROTECT)

    class Meta:
        verbose_name_plural = 'Home'