from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin
# Register your models here.
from .models import Clearance, Contract, Interpol, Interview, Medical, Passport, Ticket, Vetting, Visa, OtherOperation, TravelPlan

@admin.register(Clearance)
class ClearanceAdmin(admin.ModelAdmin):
    list_display = ('client', 'clearance_file', 'submission_date', 'position_on_clearance', 'status', 'created')
    list_filter = ['status', 'submission_date', 'created']
    search_fields = ['client', 'position_on_clearance', 'submission_date']
    list_editable = ['status']

@admin.register(Contract)
class ContractAdmin(admin.ModelAdmin):
    list_display = ('client', 'employer', 'submission_date', 'status', 'created')
    list_filter = ['status', 'submission_date', 'created']
    search_fields = ['client', 'employer', 'submission_date']
    list_editable = ['status']

@admin.register(Interpol)
class InterpolAdmin(admin.ModelAdmin):
    list_display = ('client', 'submission_date', 'clearance_date', 'status', 'created')
    list_filter = ['status', 'submission_date', 'clearance_date', 'created']
    search_fields = ['client', 'submission_date', 'clearance_date']
    list_editable = ['status']

@admin.register(Interview)
class InterviewAdmin(admin.ModelAdmin):
    list_display = ('client', 'nationality', 'married', 'home_town', 'status', 'created')
    list_filter = ['status', 'married', 'created']
    list_editable = ['status']
    search_fields = ['client', 'nationality', 'home_town']

@admin.register(Medical)
class MedicalAdmin(admin.ModelAdmin):
    list_display = ('client', 'medical_type', 'status', 'document', 'created')
    list_filter = ['medical_type', 'status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'document']

@admin.register(OtherOperation)
class OtherOperationAdmin(admin.ModelAdmin):
    list_display = ()

@admin.register(Passport)
class PassportAdmin(admin.ModelAdmin):
    list_display = ('client', 'passport_no', 'issue_date', 'expiry_date', 'document', 'status', 'created')
    list_filter = ['status', 'issue_date', 'created']
    list_editable = ['status']
    search_fields = ['passport_no', 'client']

class TicketResource(resources.ModelResource):
    class Meta:
        model = Ticket
        fields = ('client', 'ticket_no', 'airline', 'issue_date', 'departure_date', 'arrival_date', 'status', 'created')

@admin.register(Ticket)
class TicketAdmin(ImportExportModelAdmin):
    resource_class = TicketResource
    list_display = ('client', 'ticket_no', 'airline', 'checkin', 'departure_date', 'status', 'created')
    list_filter = ['status', 'departure_date', 'created']
    list_editable = ['status']
    search_fields = ['client', 'ticket_no', 'airline', 'checkin']

@admin.register(Vetting)
class VettingAdmin(admin.ModelAdmin):
    list_display = ('client', 'job', 'destination', 'employer', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala', 'status', 'created')
    list_filter = ['status', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala', 'created']
    list_editable = ['status', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala']
    search_fields = ['client', 'job', 'destination', 'employer']

@admin.register(Visa)
class VisaAdmin(admin.ModelAdmin):
    list_display = ('client', 'visa_no', 'issue_date', 'validity', 'status', 'created')
    list_filter = ['status', 'issue_date', 'created']
    list_editable = ['status']
    search_fields = ['client', 'visa_no', 'validity']

@admin.register(TravelPlan)
class TravelPlanAdmin(admin.ModelAdmin):
    list_display = ('client', 'item', 'status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'item']
