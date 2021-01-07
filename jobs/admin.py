from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin

# Register your models here.
from .models import Job

class JobResource(resources.ModelResource):
    class Meta:
        model = Job
        fields = ('title', 'category', 'quantity', 'partner', 'destination', 'appliation_fee', 'salary','created')
@admin.register(Job)
class JobAdmin(ImportExportModelAdmin):
    resource_class = JobResource
    list_display = ('title', 'category', 'quantity', 'destination', 'application_fee', 'salary', 'is_active', 'created')
    list_filter = ['category', 'destination', 'is_active', 'created']
    search_fields = ['title', 'salary', 'application_fee']
    list_editable = ['quantity', 'is_active']
