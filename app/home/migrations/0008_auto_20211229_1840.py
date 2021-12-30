# Generated by Django 3.2.9 on 2021-12-29 18:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_imagem_tipo'),
        ('home', '0007_remove_instagramfeel_instagram_5'),
    ]

    operations = [
        migrations.AddField(
            model_name='instagramfeel',
            name='instagram_5',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='instagram_5', to='core.imagem'),
        ),
        migrations.AddField(
            model_name='instagramfeel',
            name='instagram_6',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='instagram_6', to='core.imagem'),
        ),
        migrations.AddField(
            model_name='instagramfeel',
            name='instagram_7',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='instagram_7', to='core.imagem'),
        ),
        migrations.AddField(
            model_name='instagramfeel',
            name='instagram_8',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='instagram_8', to='core.imagem'),
        ),
    ]