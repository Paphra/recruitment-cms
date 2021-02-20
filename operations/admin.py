from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin
# Register your models here.
from .models import Clearance, Contract, Interpol, Interview, Medical, Passport, Ticket, Training, Vetting, Visa, OtherOperation, Travel

class ClearanceResource(resources.ModelResource):
    class Meta:
        model = Clearance
        fields = ('client', 'clearance_file', 'submission_date', 'vetting', 'status', 'created')

@admin.register(Clearance)
class ClearanceAdmin(ImportExportModelAdmin):
    resource_class = ClearanceResource
    list_display = ('client', 'clearance_file', 'submission_date', 'vetting', 'status', 'created')
    list_filter = ['status', 'submission_date', 'created']
    search_fields = ['client', 'position_on_clearance', 'submission_date']
    list_editable = ['status']

    def vetting(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.vetting.status, 'Pending')

class ContractResource(resources.ModelResource):
    class Meta:
        model = Contract
        fields = ('client', 'employer', 'submission_date', 'passport', 'status', 'created')

@admin.register(Contract)
class ContractAdmin(ImportExportModelAdmin):
    resource_class = ContractResource
    list_display = ('client', 'employer', 'submission_date', 'passport', 'status', 'created')
    list_filter = ['status', 'submission_date', 'created']
    search_fields = ['client', 'employer', 'submission_date']
    list_editable = ['status']
    
    def passport(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.passport.status, 'Pending')

class InterpolResource(resources.ModelResource):
    class Meta:
        model = Interpol
        fields = ('client', 'submission_date', 'clearance_date', 'passport', 'status', 'created')

@admin.register(Interpol)
class InterpolAdmin(ImportExportModelAdmin):
    resource_class = InterpolResource
    list_display = ('client', 'submission_date', 'clearance_date', 'passport', 'status', 'created')
    list_filter = ['status', 'submission_date', 'clearance_date', 'created']
    search_fields = ['client', 'submission_date', 'clearance_date']
    list_editable = ['status']
    
    def passport(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.passport.status, 'Pending')

class TrainingResource(resources.ModelResource):
    class Meta:
        model = Training
        fields = ('client', 'center', 'interpol','status', 'created')

@admin.register(Training)
class TrainingAdmin(ImportExportModelAdmin):
    resource_class = TrainingResource
    list_display = ('client', 'center', 'interpol','status', 'created')
    list_filter = ['status', 'center', 'created']
    search_fields = ['client', 'center']
    list_editable = ['status']
    
    def interpol(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.interpol.status, 'Pending')

class InterviewResource(resources.ModelResource):
    class Meta:
        model = Interview
        fields = ('client', 'married', 'home_town', 'registered', 'status', 'created')

@admin.register(Interview)
class InterviewAdmin(ImportExportModelAdmin):
    resource_class = InterviewResource
    list_display = ('client', 'married', 'home_town', 'registered', 'status', 'created')
    list_filter = ['status', 'married', 'created']
    list_editable = ['status']
    search_fields = ['client', 'home_town']

    def registered(self, obj):
        check = {
            True: 'Yes',
            False: 'No'
        }
        return check.get(obj.client.registered, 'No')

class MedicalResource(resources.ModelResource):
    class Meta:
        model = Medical
        fields = ('client', 'medical_type', 'musaned', 'interview', 'status', 'created')

@admin.register(Medical)
class MedicalAdmin(ImportExportModelAdmin):
    resource_class = MedicalResource
    list_display = ('client', 'medical_type', 'musaned', 'interview', 'status', 'created')
    list_filter = ['medical_type', 'status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'document']
    
    def musaned(self, obj):
        status = {
            True: 'Done',
            False: 'Pending'
        }
        return status.get(obj.client.vetting.musaned, 'Pending')

    def interview(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.interview.status, 'Pending')

class OtherOpsResource(resources.ModelResource):
    class Meta:
        model = OtherOperation
        fields = ("item", "status", "created")

@admin.register(OtherOperation)
class OtherOperationAdmin(ImportExportModelAdmin):
    resource_class = OtherOpsResource
    list_display = ("item", "status", "created")
    list_filter = ['status', 'created']
    list_editable = ['status']

class PassportResource(resources.ModelResource):
    class Meta:
        model = Passport
        fields = ('client', 'passport_no', 'issue_date', 'expiry_date', 'pre_medical','status', 'created')

@admin.register(Passport)
class PassportAdmin(ImportExportModelAdmin):
    resource_class = PassportResource
    list_display = ('client', 'passport_no', 'issue_date', 'expiry_date', 'pre_medical','status', 'created')
    list_filter = ['status', 'issue_date', 'created']
    list_editable = ['status']
    search_fields = ['passport_no', 'client']

    def pre_medical(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        medical = obj.client.medical_set.filter(medical_type=0).first()
        if medical:
            return status.get(medical.status, 'Pending')
        else:
            return 'Pending'

class TicketResource(resources.ModelResource):
    class Meta:
        model = Ticket
        fields = ('client', 'ticket_no', 'airline', 'checkin', 'departure_date', 'visa','status', 'created')

@admin.register(Ticket)
class TicketAdmin(ImportExportModelAdmin):
    resource_class = TicketResource
    list_display = ('client', 'ticket_no', 'airline', 'checkin', 'departure_date', 'visa','status', 'created')
    list_filter = ['status', 'departure_date', 'created']
    list_editable = ['status']
    search_fields = ['client', 'ticket_no', 'airline', 'checkin']
    
    def visa(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.visa.status, 'Pending')

class VettingResource(resources.ModelResource):
    class Meta:
        model = Vetting
        fields = ('client', 'destination', 'employer', 'contract', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala', 'status', 'created')

@admin.register(Vetting)
class VettingAdmin(ImportExportModelAdmin):
    resource_class = VettingResource
    list_display = ('client', 'destination', 'employer', 'contract', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala', 'status', 'created')
    list_filter = ['status', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala', 'created']
    list_editable = ['status', 'diso', 'giso', 'training', 'ministry', 'musaned', 'waqala']
    search_fields = ['client', 'destination', 'employer']

    def contract(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.contract.status, 'Pending')

class VisaResource(resources.ModelResource):
    class Meta:
        model = Visa
        fields = ('client', 'visa_no', 'issue_date', 'validity', 'visa_medical','status', 'created')

@admin.register(Visa)
class VisaAdmin(ImportExportModelAdmin):
    resource_class = VisaResource
    list_display = ('client', 'visa_no', 'issue_date', 'validity', 'visa_medical','status', 'created')
    list_filter = ['status', 'issue_date', 'created']
    list_editable = ['status']
    search_fields = ['client', 'visa_no', 'validity']

    def visa_medical(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        medical = obj.client.medical_set.filter(medical_type=1).first()
        if medical:
            return status.get(medical.status, 'Pending')
        else:
            return 'Pending'

class TravelResource(resources.ModelResource):
    class Meta:
        model = Travel
        fields = ('client', 'description', 'ticket','status', 'created')

@admin.register(Travel)
class TravelAdmin(ImportExportModelAdmin):
    resource_class = TravelResource
    list_display = ('client', 'description', 'ticket','status', 'created')
    list_filter = ['status', 'created']
    list_editable = ['status']
    search_fields = ['client', 'description']

    def ticket(self, obj):
        status = {
            0: 'Pending',
            1: 'Active',
            2: 'Done',
            3: 'Cancelled',
            4: 'Passed',
            5: 'Failed'
        }
        return status.get(obj.client.ticket.status, 'Pending')