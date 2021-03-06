# Generated by Django 3.1.5 on 2021-02-16 21:53

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('settings', '0002_delete_training'),
        ('files', '0002_auto_20210119_1120'),
        ('home', '0004_remove_client_trainings'),
        ('operations', '0003_auto_20210121_1047'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clearance',
            name='clearance_file',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='files.clearancefile'),
        ),
        migrations.AlterField(
            model_name='clearance',
            name='position_on_clearance',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='contract',
            name='employer',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='settings.employer'),
        ),
        migrations.AlterField(
            model_name='passport',
            name='passport_no',
            field=models.CharField(blank=True, max_length=100, null=True, unique=True, verbose_name='Passport Number'),
        ),
        migrations.CreateModel(
            name='Training',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.IntegerField(choices=[(0, 'Pending'), (1, 'Active'), (2, 'Done'), (3, 'Cancelled'), (4, 'Passed'), (5, 'Failed')], default=0)),
                ('debriefing', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('eeu', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('others', models.FileField(blank=True, upload_to='clients/%Y/%m/%d/')),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('center', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='settings.trainingcenter')),
                ('client', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='home.client')),
            ],
        ),
    ]
