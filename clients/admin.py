from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin

# Register your models here.
from .models import Client

class ClientResource(resources.ModelResource):
    class Meta:
        model = Client
        fields = ('first_name', 'last_name', 'phone', 'email', 'contat_mode', 'job', 'address', 'branch', 'registered', 'created')
class ClientAdmin(ImportExportModelAdmin):
    resource_class = ClientResource
    list_display = ('first_name', 'last_name', 'phone', 'email', 'gender', 'job', 'registered', 'created')
    list_filter = ['registered', 'job', 'created']
    search_fields = ['first_name', 'last_name', 'phone', 'email', 'job']
    list_editable = ['registered']
admin.site.register(Client, ClientAdmin)