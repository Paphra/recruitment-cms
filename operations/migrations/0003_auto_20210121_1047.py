# Generated by Django 3.1.5 on 2021-01-21 07:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('operations', '0002_interview_age'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='passport',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='passport',
            name='last_name',
        ),
        migrations.RemoveField(
            model_name='passport',
            name='profession',
        ),
        migrations.RemoveField(
            model_name='vetting',
            name='date_ob',
        ),
        migrations.RemoveField(
            model_name='vetting',
            name='job',
        ),
        migrations.RemoveField(
            model_name='vetting',
            name='nationality',
        ),
    ]