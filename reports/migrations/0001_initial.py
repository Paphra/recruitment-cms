# Generated by Django 3.1.4 on 2021-01-04 10:49

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('clients', '0002_auto_20210104_1349'),
        ('jobs', '0002_auto_20210104_1349'),
        ('settings', '0002_auto_20210104_1349'),
    ]

    operations = [
        migrations.CreateModel(
            name='Skill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('skill', models.CharField(max_length=100)),
                ('fluence', models.IntegerField(choices=[(0, 'None'), (1, 'Poor'), (2, 'Good'), (3, 'Excellent')], default=2)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
            ],
        ),
        migrations.CreateModel(
            name='Recruitment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.IntegerField(choices=[(0, 'Pending'), (1, 'Active'), (2, 'Done'), (3, 'Cancelled'), (4, 'Passed'), (5, 'Failed')], default=0)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
                ('destination', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='settings.destination')),
                ('employer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='settings.employer')),
                ('job', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='jobs.job')),
                ('partner', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='settings.partner')),
            ],
        ),
        migrations.CreateModel(
            name='NextOfKin',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('relationship', models.CharField(max_length=100)),
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('contact', models.CharField(max_length=100)),
                ('address', models.CharField(blank=True, max_length=100)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
            ],
        ),
        migrations.CreateModel(
            name='Language',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('language', models.CharField(max_length=100)),
                ('fluence', models.IntegerField(choices=[(0, 'None'), (1, 'Poor'), (2, 'Good'), (3, 'Excellent')], default=2)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
            ],
        ),
        migrations.CreateModel(
            name='ClientTraining',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.IntegerField(choices=[(0, 'Pending'), (1, 'Active'), (2, 'Done'), (3, 'Cancelled'), (4, 'Passed'), (5, 'Failed')], default=0)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
                ('training', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='settings.training')),
            ],
        ),
        migrations.CreateModel(
            name='Bio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bio_key', models.CharField(max_length=100)),
                ('bio_value', models.CharField(max_length=200)),
                ('document', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clients.client')),
            ],
        ),
    ]
