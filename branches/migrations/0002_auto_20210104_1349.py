# Generated by Django 3.1.4 on 2021-01-04 10:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('branches', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='branch',
            options={'verbose_name': 'Branch', 'verbose_name_plural': 'Branches'},
        ),
        migrations.AlterField(
            model_name='branch',
            name='description',
            field=models.TextField(blank=True),
        ),
    ]