from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin

# Register your models here.
from .models import Agent, Partner, JobCategory, Publicity, ContactMode, Destination, Stage, Employer, Training

class AgentAdmin(admin.ModelAdmin):
    list_display = ('title', 'address', 'phone', 'email', 'is_active', 'created')
    search_fields = ['title', 'address', 'phone', 'email']
    list_filter = ['is_active', 'created']
    list_editable = ['is_active']
admin.site.register(Agent, AgentAdmin)

class ContactModeAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'is_active', 'created')
    search_fields = ['title', 'description']
    list_filter = ['is_active', 'created']
    list_editable = ['is_active']
admin.site.register(ContactMode, ContactModeAdmin)

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

class JobCategoryResource(resources.ModelResource):
    class Meta:
        model = JobCategory
        fields = ('title', 'description')
class JobCategoryAdmin(ImportExportModelAdmin):
    resource_class = JobCategoryResource
    list_display = ('title', 'description', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    search_fields = ['title', 'description']
    list_editable = ['is_active']
admin.site.register(JobCategory, JobCategoryAdmin)

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

class TrainingAdmin(admin.ModelAdmin):
    list_display = ('title', 'job','description', 'is_active', 'created')
    list_filter = ('is_active', 'created', 'job')
    list_editable = ['is_active']
admin.site.register(Training, TrainingAdmin)