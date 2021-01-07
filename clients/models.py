from django.db import models
from  django.utils import timezone
# Create your models here.
from django.contrib.auth.models import User

class Client(models.Model):
    """
    Clients Table
    """
    MALE = 'M'
    FEMALE = 'F'
    OTHER = 'O'
    GENDER_CHOICES = [
        (MALE, 'Male'),
        (FEMALE, 'Female'),
        (OTHER, 'Others')
    ]
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
    phone = models.CharField("Phone Number", max_length=20)
    email = models.EmailField("Email Address", max_length=100, blank=True)
    reason = models.TextField(blank=True)
    address = models.CharField(max_length=50)
    publicity = models.ForeignKey("settings.Publicity", null=True, on_delete=models.SET_NULL)
    contact_mode = models.ForeignKey("settings.ContactMode", null=True, on_delete=models.SET_NULL)
    branch = models.ForeignKey("branches.Branch", on_delete=models.CASCADE)
    job = models.ForeignKey("jobs.Job", on_delete=models.CASCADE)
    user = models.ForeignKey(User, verbose_name="Added By", null=True, on_delete=models.SET_NULL)
    registered = models.BooleanField(default=False)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.first_name + ' ' + self.last_name
    