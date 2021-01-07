from django.contrib import admin

# Register your models here.
from .models import Branch

class BranchAdmin(admin.ModelAdmin):
    list_display = ('title', 'address', 'description', 'is_active', 'established')
    list_filter = ['is_active', 'established']
    search_fields = ['title', 'address']
    list_editable = ['is_active']
admin.site.register(Branch, BranchAdmin)