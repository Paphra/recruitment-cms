from django.db import models

# Create your models here.
from django.utils import timezone

class Partner(models.Model):
    """
    Partner's table
    """
    title = models.CharField(max_length=30, unique=True)
    phone = models.CharField('Phone Number', max_length=15)
    email = models.EmailField('Email Address', max_length=100)
    address = models.CharField(max_length=100)
    country = models.CharField(max_length=20)
    city = models.CharField(max_length=20)
    description = models.TextField(null=True, blank=True)
    document = models.FileField(upload_to="uploads/%Y/%m/%d/", blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.title
    
class Publicity(models.Model):
    """
    Publicities Table
    """
    title = models.CharField(max_length=30, unique=True)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Publicity'
        verbose_name_plural = 'Publicities'

class Destination(models.Model):
    """
    Destinations Table
    """
    title = models.CharField(max_length=30, unique=True)
    description = models.TextField(null=True, blank=True)
    city = models.CharField(max_length=50, blank=True)
    country = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class Stage(models.Model):
    """
    Stages Table
    """
    title = models.CharField(max_length=30, unique=True)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class Category(models.Model):
    """
    Categories table
    """
    title = models.CharField(max_length=30, unique=True)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateTimeField(default=timezone.now)
    stages = models.ManyToManyField(Stage, blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Category'
        verbose_name_plural = 'Categories'

class Agent(models.Model):
    """
    Agents Table
    """
    title = models.CharField(max_length=100, unique=True)
    address = models.CharField(max_length=100)
    phone = models.CharField("Phone Number", max_length=20)
    email  = models.EmailField("Email Address", max_length=100, blank=True)
    country = models.CharField(max_length=100, blank=True)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class Employer(models.Model):
    """
    Employers Table
    """
    title = models.CharField(max_length=100, unique=True)
    address = models.CharField(max_length=100)
    phone = models.CharField("Phone Number", max_length=20)
    email  = models.EmailField("Email Address", max_length=100, blank=True)
    city = models.CharField(max_length=100, blank=True)
    country = models.CharField(max_length=100)
    description = models.TextField(null=True, blank=True)
    document = models.FileField(upload_to="employers/%Y/%m/%d/", blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class Training(models.Model):
    """
    Trainings Table
    """
    title = models.CharField(max_length=30, unique=True)
    job = models.ForeignKey("home.Job", null=True, blank=True, on_delete=models.SET_NULL)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class TrainingCenter(models.Model):
    """
    Training Centers Table
    """
    title = models.CharField(max_length=30, unique=True)
    address = models.CharField(max_length=100)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title
