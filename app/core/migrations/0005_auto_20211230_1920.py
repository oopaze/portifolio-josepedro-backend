# Generated by Django 3.2.9 on 2021-12-30 19:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_auto_20211230_1920'),
    ]

    operations = [
        migrations.AlterField(
            model_name='imagem',
            name='atualizado_em',
            field=models.DateTimeField(auto_now=True, verbose_name='Atualizado em'),
        ),
        migrations.AlterField(
            model_name='imagem',
            name='criado_em',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Criado em'),
        ),
    ]
