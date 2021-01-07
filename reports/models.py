from django.db import models
from django.utils import timezone
# Create your models here.


class ClientStage(models.Model):
    """
    Client Stages Table
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
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    stage = models.ForeignKey("settings.Stage", on_delete=models.CASCADE)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    created = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.client + '|' + self.stage

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
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    skill = models.CharField(max_length=100)
    fluence = models.IntegerField(choices=FLUENCE_CHOICES, default=GOOD)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|'+ self.skill

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
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    language = models.CharField(max_length=100)
    fluence = models.IntegerField(choices=FLUENCE_CHOICES, default=GOOD)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|'+ self.language

class Bio(models.Model):
    """
    Bio Data Table
    """
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    bio_key = models.CharField(max_length=100)
    bio_value = models.CharField(max_length=200)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|' + self.created

class NextOfKin(models.Model):
    """
    Next Of Kins Table
    """
    client = models.OneToOneField("clients.Client", on_delete=models.CASCADE)
    relationship = models.CharField(max_length=100)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)
    address = models.CharField(max_length=100, blank=True)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|'+ self.first_name + ' ' + self.last_name

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
    client = models.OneToOneField("clients.Client", on_delete=models.CASCADE)
    job = models.ForeignKey("jobs.Job", on_delete=models.CASCADE)
    employer = models.ForeignKey("settings.Employer", on_delete=models.CASCADE)
    destination = models.ForeignKey("settings.Destination", null=True, on_delete=models.SET_NULL)
    partner = models.ForeignKey("settings.Partner", null=True, on_delete=models.SET_NULL)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|' + self.created

class ClientTraining(models.Model):
    """
    Client Trainings Table
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
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    training = models.ForeignKey("settings.Training", on_delete=models.CASCADE)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client + '|' + self.training