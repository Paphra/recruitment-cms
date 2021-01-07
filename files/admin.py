from django.contrib import admin

# Register your models here.
from .models import Photo, ClearanceFile, ClientFile

@admin.register(ClearanceFile)
class ClearanceFileAdmin(admin.ModelAdmin):
    list_display = ('title', 'clearance_no', 'submission_date', 'clearance_date', 'client_count', 'document', 'created')
    list_filter = ['submission_date', 'clearance_date', 'created']
    list_editable = ['client_count']
    search_fields = ['title', 'clearance_no']

@admin.register(ClientFile)
class ClientFileAdmin(admin.ModelAdmin):
    list_display = ('client', 'title', 'description', 'document', 'created')
    list_filter = ['created']
    search_fields = ['client', 'title']

@admin.register(Photo)
class PhotoAdmin(admin.ModelAdmin):
    list_display = ('client', 'passport', 'full', 'others', 'created')
    list_filter = ['created']
    search_fields = ['client']


