from django.db import models
from django.utils import timezone
# Create your models here.

class Job(models.Model):
    """
    Jobs table
    """
    title = models.CharField(max_length=100, unique=True)
    category = models.ForeignKey("settings.JobCategory", verbose_name="Job Category", on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)
    partner = models.ForeignKey("settings.Partner", on_delete=models.CASCADE)
    destination = models.ForeignKey("settings.Destination", on_delete=models.CASCADE)
    application_fee = models.CharField(max_length=50, blank=True)
    salary = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    employer = models.ForeignKey("settings.Employer", null=True, on_delete=models.SET_NULL)

    demnd_letter = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    sample_contract = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    powers_of_attoney = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    order_approval = models.FileField(upload_to="jobs/%Y/%m/%d/", blank=True)
    
    is_active = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now=True)