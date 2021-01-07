from django.contrib import admin

# Register your models here.
from .models import Task

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = ('receiver', 'task', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['receiver', 'task']