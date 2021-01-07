from django.db import models
from django.utils import timezone
# Create your models here.
from django.contrib.auth.models import User

class Fee(models.Model):
    """
    Fees Table
    """
    title = models.CharField(max_length=30, unique=True)
    description = models.TextField(blank=True)
    job = models.ForeignKey("jobs.Job", null=True, on_delete=models.SET_NULL)
    amount = models.CharField(max_length=50)
    is_active = models.BooleanField(default=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.title

class Payment(models.Model):
    """
    Payments Table
    """
    client = models.ForeignKey("clients.Client", on_delete=models.CASCADE)
    user = models.ForeignKey(User, verbose_name="Added By", on_delete=models.CASCADE)
    fee = models.ForeignKey(Fee, verbose_name="Payment For", null=True, on_delete=models.SET_NULL)
    amount_paid = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    document = models.FileField(upload_to="clients/%Y/%m/%d/", blank=True)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.client + '|' + self.amount_paid
    
class Expense(models.Model):
    """
    Expenses Table
    """
    user = models.ForeignKey(User, verbose_name="Entered By", on_delete=models.CASCADE)
    amount = models.CharField(max_length=50)
    description = models.TextField()
    document = models.FileField(upload_to='expenses/%Y/%m/%d/', blank=True)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.amount + '|' + self.description
    
