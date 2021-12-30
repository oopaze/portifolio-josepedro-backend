# Generated by Django 3.2.9 on 2021-12-30 19:20

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0013_alter_momento_tipo'),
    ]

    operations = [
        migrations.AddField(
            model_name='carrossel',
            name='atualizado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Atualizado em'),
        ),
        migrations.AddField(
            model_name='carrossel',
            name='criado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Criado em'),
        ),
        migrations.AddField(
            model_name='home',
            name='atualizado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Atualizado em'),
        ),
        migrations.AddField(
            model_name='home',
            name='criado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Criado em'),
        ),
        migrations.AddField(
            model_name='instagramfeel',
            name='atualizado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Atualizado em'),
        ),
        migrations.AddField(
            model_name='instagramfeel',
            name='criado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Criado em'),
        ),
        migrations.AddField(
            model_name='momento',
            name='atualizado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Atualizado em'),
        ),
        migrations.AddField(
            model_name='momento',
            name='criado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Criado em'),
        ),
        migrations.AddField(
            model_name='pacote',
            name='atualizado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Atualizado em'),
        ),
        migrations.AddField(
            model_name='pacote',
            name='criado_em',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Criado em'),
        ),
    ]
