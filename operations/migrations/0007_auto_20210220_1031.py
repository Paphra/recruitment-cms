# Generated by Django 3.1.5 on 2021-02-20 07:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_remove_client_trainings'),
        ('operations', '0006_auto_20210217_2342'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='travel',
            name='item',
        ),
        migrations.AddField(
            model_name='travel',
            name='description',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='travel',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='home.client'),
        ),
    ]
