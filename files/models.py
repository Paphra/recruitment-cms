from django.db import models
from django.utils import timezone
# Create your models here.


class Photo(models.Model):
    """
    Photos Table
    """
    client = models.OneToOneField("clients.Client", on_delete=models.CASCADE)
    passport = models.ImageField("Passport Size", blank=True, upload_to="client/%Y/%m/%d/")
    full = models.ImageField("Full Size", blank=True, upload_to="client/%Y/%m/%d/")
    others = models.ImageField(upload_to="client/%Y/%m/%d/")
    created = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.client
    
class ClearanceFile(models.Model):
    """
    Clearance Files Table
    """
    title = models.CharField(max_length=100, unique=True)
    clearance_no = models.CharField("Clearance Number", max_length=100, unique=True)
    submission_date = models.DateTimeField(default=timezone.now)
    clearance_date = models.DateTimeField(default=timezone.now)
    client_count = models.IntegerField(default=0)
    description = models.TextField(blank=True)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class ClientFile(models.Model):
    """
    Client Files Table
    """
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    title = models.CharField(max_length=100, unique=True)
    description = models.TextField(blank=True)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title