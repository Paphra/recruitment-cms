from django.db import models
from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin
from django.forms import CheckboxSelectMultiple

# Register your models here.
from .models import Agent, Partner, Category, Publicity, Destination, Stage, Employer, TrainingCenter

class AgentAdmin(admin.ModelAdmin):
    list_display = ('title', 'address', 'phone', 'email', 'is_active', 'created')
    search_fields = ['title', 'address', 'phone', 'email']
    list_filter = ['is_active', 'created']
    list_editable = ['is_active']
admin.site.register(Agent, AgentAdmin)

class DestinationAdmin(admin.ModelAdmin):
    list_display = ('title', 'city', 'country', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'city', 'country']
    list_editable = ['is_active']
admin.site.register(Destination, DestinationAdmin)

class EmployerAdmin(admin.ModelAdmin):
    list_display = ('title', 'address', 'phone', 'email', 'country', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'address', 'country', 'email']
    list_editable = ['is_active']
admin.site.register(Employer, EmployerAdmin)

class CategoryResource(resources.ModelResource):
    class Meta:
        model = Category
        fields = ('title', 'description')
class CategoryAdmin(ImportExportModelAdmin):
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }
    resource_class = CategoryResource
    list_display = ('title', 'description', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'description']
    list_editable = ['is_active']
admin.site.register(Category, CategoryAdmin)

class PartnerAdmin(admin.ModelAdmin):
    list_display = ('title', 'phone', 'email', 'country', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'phone', 'email', 'address', 'country']
    list_editable = ['is_active']
admin.site.register(Partner, PartnerAdmin)

class PublicityAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'description']
    list_editable = ['is_active']
admin.site.register(Publicity, PublicityAdmin)

class StageAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'description']
    list_editable = ['is_active']
admin.site.register(Stage, StageAdmin)

class TrainingCenterAdmin(admin.ModelAdmin):
    list_display = ('title', 'address','description', 'is_active', 'created')
    list_filter = ('is_active', 'created')
    list_editable = ['is_active']
admin.site.register(TrainingCenter, TrainingCenterAdmin)
