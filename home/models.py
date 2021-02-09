from django.db import models
from django.utils import timezone

from django.contrib.auth.models import User

class Job(models.Model):
    """
    Jobs table
    """
    title = models.CharField(max_length=100, unique=True)
    category = models.ForeignKey("settings.Category", verbose_name="Job Category", on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)
    partner = models.ForeignKey("settings.Partner", on_delete=models.CASCADE)
    # destination = models.ForeignKey("settings.Destination", on_delete=models.CASCADE)
    application_fee = models.CharField(max_length=50, blank=True)
    salary = models.CharField(max_length=50)
    description = models.TextField(null=True, blank=True)

    demnd_letter = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    sample_contract = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    powers_of_attoney = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    order_approval = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    
    is_active = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
    
class Client(models.Model):
    """
    Clients Table
    """
    MALE = 1
    FEMALE = 0
    GENDER_CHOICES = [
        (MALE, 'Male'),
        (FEMALE, 'Female')
    ]
    PAID = 1
    NOT_PAID = 0
    FEE_CHOICES = [
        (PAID, 'Paid'),
        (NOT_PAID, 'Not Paid')
    ]
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    gender = models.IntegerField(choices=GENDER_CHOICES)
    phone = models.CharField("Phone Number", max_length=20)
    email = models.EmailField("Email Address", max_length=100, blank=True)
    reason = models.TextField(null=True, blank=True)
    address = models.CharField(max_length=50)
    publicity = models.ForeignKey("settings.Publicity", null=True, blank=True, on_delete=models.SET_NULL)
    branch = models.ForeignKey("home.Branch", on_delete=models.CASCADE)
    job = models.ForeignKey("home.Job", on_delete=models.CASCADE)
    user = models.ForeignKey(User, verbose_name="Added By", null=True, blank=True, on_delete=models.SET_NULL)
    registered = models.BooleanField(default=False)
    reg_fee = models.IntegerField('Registration Fee', choices=FEE_CHOICES, default=NOT_PAID)
    created = models.DateTimeField(default=timezone.now)

    stages = models.ManyToManyField("settings.Stage", blank=True)
    trainings = models.ManyToManyField("settings.Training", blank=True)
    
    class Meta:
        ordering = ['-created'] 

    def __str__(self):
        return self.first_name + ' ' + self.last_name

class Branch(models.Model):
    title = models.CharField(max_length=30)
    address = models.CharField(max_length=100)
    contact = models.CharField(max_length=50, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    is_active = models.BooleanField(default=True)
    established = models.DateTimeField('Date of Establishment')

    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name = 'Branch'
        verbose_name_plural = 'Branches'