# Generated by Django 3.1.4 on 2021-01-04 10:49

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('jobs', '0001_initial'),
        ('settings', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Agent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100, unique=True)),
                ('address', models.CharField(max_length=100)),
                ('phone', models.CharField(max_length=20, verbose_name='Phone Number')),
                ('email', models.EmailField(blank=True, max_length=100, verbose_name='Email Address')),
                ('country', models.CharField(blank=True, max_length=100)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='ContactMode',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Destination',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('city', models.CharField(blank=True, max_length=50)),
                ('country', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Employer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100, unique=True)),
                ('address', models.CharField(max_length=100)),
                ('phone', models.CharField(max_length=20, verbose_name='Phone Number')),
                ('email', models.EmailField(blank=True, max_length=100, verbose_name='Email Address')),
                ('city', models.CharField(blank=True, max_length=100)),
                ('country', models.CharField(max_length=100)),
                ('description', models.TextField(blank=True)),
                ('document', models.FileField(blank=True, upload_to='employers/%Y/%m/%d/')),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='JobCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'verbose_name': 'Job Category',
                'verbose_name_plural': 'Job Categories',
            },
        ),
        migrations.CreateModel(
            name='Publicity',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
            options={
                'verbose_name': 'Publicity',
                'verbose_name_plural': 'Publicities',
            },
        ),
        migrations.CreateModel(
            name='Stage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.AlterField(
            model_name='partner',
            name='document',
            field=models.FileField(blank=True, upload_to='uploads/%Y/%m/%d/'),
        ),
        migrations.AlterField(
            model_name='partner',
            name='email',
            field=models.EmailField(max_length=100, verbose_name='Email Address'),
        ),
        migrations.AlterField(
            model_name='partner',
            name='title',
            field=models.CharField(max_length=30, unique=True),
        ),
        migrations.CreateModel(
            name='Training',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, unique=True)),
                ('description', models.TextField(blank=True)),
                ('is_active', models.BooleanField(default=True)),
                ('created', models.DateField(default=django.utils.timezone.now)),
                ('job', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='jobs.job')),
            ],
        ),
    ]