# Generated by Django 3.1.4 on 2021-01-05 16:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0003_auto_20210105_1029'),
        ('operations', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clearance',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='contract',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='interpol',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='interview',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='medical',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='otheroperation',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='passport',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='ticket',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='vetting',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
        migrations.AlterField(
            model_name='visa',
            name='client',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='clients.client'),
        ),
    ]
