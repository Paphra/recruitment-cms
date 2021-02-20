from django.contrib import admin

from import_export import resources
from import_export.admin import ImportExportModelAdmin

from .models import Task, Skill, Educ, Language, Bio, NextOfKin, Recruitment

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = ('receiver', 'task', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['receiver', 'task']

class RecruitmentResource(resources.ModelResource):
    class Meta:
        model = Recruitment
        fields = ('client', 'job', 'employer', 'destination', 'partner', 'travel', 'status', 'created')

@admin.register(Recruitment)
class RecruitmentAdmin(ImportExportModelAdmin):
    resource_class = RecruitmentResource
    list_display = ('client', 'job', 'employer', 'destination', 'partner', 'travel', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'job', 'employer', 'destination', 'partner']
    
    def travel(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.travel.status, 'Pending')
  
# @admin.register(Bio)
# class BioAdmin(admin.ModelAdmin):
#     list_display = ('client', 'bio_key', 'bio_value', 'created')
#     list_filter = ['created']
#     list_editable = ['bio_key', 'bio_value']
#     search_fields = ['client', 'bio_key']

# @admin.register(Language)
# class LanguageAdmin(admin.ModelAdmin):
#     list_display = ('client', 'language', 'fluence', 'created')
#     list_filter = ['fluence', 'created']
#     list_editable = ['fluence']
#     search_fields = ['client', 'language']
    

# @admin.register(NextOfKin)
# class NextOfKinAdmin(admin.ModelAdmin):
#     list_display = ('client', 'relationship', 'first_name', 'last_name', 'contact', 'created')
#     list_filter = ['created']
#     search_fields = ['client', 'first_name', 'last_name', 'contact']    
  
# @admin.register(Skill)
# class SkillAdmin(admin.ModelAdmin):
#     list_display = ('client', 'skill', 'fluence', 'created')
#     list_filter = ['fluence', 'created']
#     list_editable = ['fluence']
#     search_fields = ['client', 'skill']

# @admin.register(Educ)
# class EducAdmin(admin.ModelAdmin):
#     list_display = ('client', 'institution', 'qualification', 'created')
#     list_filter = ['created']
#     search_fields = ['client', 'institution', 'qualification']
