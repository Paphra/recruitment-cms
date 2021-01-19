from django.db import models
from django.utils import timezone
# Create your models here.
from django.contrib.auth.models import User

class Task(models.Model):
    """
    Tasks Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled')
    ]
    receiver = models.ForeignKey(User, on_delete=models.CASCADE)
    task = models.TextField()
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.task

class Skill(models.Model):
    """
    Skills Table
    """
    NONE = 0
    POOR = 1
    GOOD = 2
    EXCELLENT = 3
    FLUENCE_CHOICES = [
        (NONE, 'None'),
        (POOR, 'Poor'),
        (GOOD, 'Good'),
        (EXCELLENT, 'Excellent')
    ]
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    skill = models.CharField(max_length=100)
    fluence = models.IntegerField(choices=FLUENCE_CHOICES, default=GOOD)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.skill

class Educ(models.Model):
    """
    Education Table
    """
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    institution = models.CharField(max_length=200)
    qualification = models.CharField(max_length=200)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', null=True, blank=True)
    created = models.DateField(default=timezone.now)

    class Meta:
        verbose_name = 'Education'
        verbose_name_plural = 'Education'

    def __str__(self):
        return self.qualification

class Language(models.Model):
    """
    Languages Table
    """
    NONE = 0
    POOR = 1
    GOOD = 2
    EXCELLENT = 3
    FLUENCE_CHOICES = [
        (NONE, 'None'),
        (POOR, 'Poor'),
        (GOOD, 'Good'),
        (EXCELLENT, 'Excellent')
    ]
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    language = models.CharField(max_length=100)
    fluence = models.IntegerField(choices=FLUENCE_CHOICES, default=GOOD)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.language

class Bio(models.Model):
    """
    Bio Data Table
    """
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    bio_key = models.CharField(max_length=100)
    bio_value = models.CharField(max_length=200)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.id

class NextOfKin(models.Model):
    """
    Next Of Kins Table
    """
    MALE = 1
    FEMALE = 0
    GENDER_CHOICES = [
        (MALE, 'Male'),
        (FEMALE, 'Female')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    relationship = models.CharField(max_length=100)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)
    gender = models.IntegerField(choices=GENDER_CHOICES)
    age = models.IntegerField(null=True, blank=True)
    address = models.CharField(max_length=100, blank=True)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.first_name + ' ' + self.last_name

class Recruitment(models.Model):
    """
    Recruitments Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    job = models.ForeignKey("home.Job", on_delete=models.CASCADE)
    employer = models.ForeignKey("settings.Employer", on_delete=models.CASCADE)
    destination = models.ForeignKey("settings.Destination", null=True, blank=True, on_delete=models.SET_NULL)
    partner = models.ForeignKey("settings.Partner", null=True, blank=True, on_delete=models.SET_NULL)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.id