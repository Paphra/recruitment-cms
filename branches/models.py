from django.db import models

# Create your models here.
class Branch(models.Model):
    title = models.CharField(max_length=30)
    address = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    is_active = models.BooleanField(default=True)
    established = models.DateTimeField('Date of Establishment')

    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name = 'Branch'
        verbose_name_plural = 'Branches'