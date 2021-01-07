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
    