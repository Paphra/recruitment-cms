from django.db import models
from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin
from django.forms import CheckboxSelectMultiple
from others.models import Skill, Educ, Language, Bio, NextOfKin, Recruitment
from files.models import Photo

from .models import Client
from .models import Branch
from .models import Job

class JobResource(resources.ModelResource):
    class Meta:
        model = Job
        fields = ('title', 'category', 'quantity', 'partner', 'appliation_fee', 'salary','created')

@admin.register(Job)
class JobAdmin(ImportExportModelAdmin):
    resource_class = JobResource
    list_display = ('title', 'category', 'quantity', 'application_fee', 'salary', 'is_active', 'created')
    list_filter = ['category', 'is_active', 'created']
    search_fields = ['title', 'salary', 'application_fee']
    list_editable = ['quantity', 'is_active']

@admin.register(Branch)
class BranchAdmin(admin.ModelAdmin):
    list_display = ('title', 'address', 'contact', 'is_active', 'established')
    list_filter = ['is_active', 'established']
    search_fields = ['title', 'contact', 'address']
    list_editable = ['is_active']

class PhotoInline(admin.TabularInline):
    model = Photo
    exclude = ['created']
    classes = ('collapse',)
    
class BioInline(admin.TabularInline):
    model = Bio
    exclude = ['created']
    extra = 1
    classes = ('collapse',)
    
class LanguageInline(admin.TabularInline):
    model = Language
    exclude = ['created']
    extra = 1
    classes = ('collapse',)

class NextOfKinInline(admin.StackedInline):
    model = NextOfKin
    exclude = ['created']
    classes = ('collapse',)
    
class SkillInline(admin.TabularInline):
    model = Skill
    exclude = ['created']
    extra = 1
    classes = ('collapse',)
    
class EducInline(admin.TabularInline):
    model = Educ
    exclude = ['created']
    extra = 1
    classes = ('collapse',)
    
class ClientResource(resources.ModelResource):
    class Meta:
        model = Client
        fields = ('first_name', 'last_name', 'phone', 'email', 'job', 'address', 'branch', 'registered', 'created')

@admin.register(Client)
class ClientAdmin(ImportExportModelAdmin):
    resource_class = ClientResource
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }
    list_display = ('first_name', 'last_name', 'phone', 'email', 'gender', 'job', 'registered', 'reg_fee', 'created')
    list_filter = ['registered', 'reg_fee', 'stages', 'created']
    search_fields = ['first_name', 'last_name', 'phone', 'email', 'job']
    list_editable = ['registered', 'reg_fee']

    inlines = [
        PhotoInline,
        BioInline,
        LanguageInline,
        SkillInline,
        NextOfKinInline,
        EducInline
    ]