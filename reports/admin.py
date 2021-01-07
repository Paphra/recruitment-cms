from django.contrib import admin

# Register your models here.
from .models import ClientStage, ClientTraining, Skill, Language, Bio, NextOfKin, Recruitment

@admin.register(Bio)
class BioAdmin(admin.ModelAdmin):
    list_display = ('client', 'bio_key', 'bio_value', 'created')
    list_filter = ['created']
    list_editable = ['bio_key', 'bio_value']
    search_fields = ['client', 'bio_key']

@admin.register(ClientStage)
class ClientStageAdmin(admin.ModelAdmin):
    list_display = ('client', 'stage', 'status', 'created')
    list_filter = ['status', 'stage', 'created']
    search_fields = ['client', 'stage']
    list_editable = ['status']

@admin.register(ClientTraining)
class ClientTrainingAdmin(admin.ModelAdmin):
    list_display = ('client', 'training', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'training']
    

@admin.register(Language)
class LanguageAdmin(admin.ModelAdmin):
    list_display = ('client', 'language', 'fluence', 'created')
    list_filter = ['fluence', 'created']
    list_editable = ['fluence']
    search_fields = ['client', 'language']
    

@admin.register(NextOfKin)
class NextOfKinAdmin(admin.ModelAdmin):
    list_display = ('client', 'relationship', 'first_name', 'last_name', 'contact', 'created')
    list_filter = ['created']
    search_fields = ['client', 'first_name', 'last_name', 'contact']    

@admin.register(Recruitment)
class RecruitmentAdmin(admin.ModelAdmin):
    list_display = ('client', 'job', 'employer', 'destination', 'partner', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'job', 'employer', 'destination', 'partner']
    
@admin.register(Skill)
class SkillAdmin(admin.ModelAdmin):
    list_display = ('client', 'skill', 'fluence', 'created')
    list_filter = ['fluence', 'created']
    list_editable = ['fluence']
    search_fields = ['client', 'skill']
