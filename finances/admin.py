from django.contrib import admin

from import_export import resources
from import_export.admin import ImportExportModelAdmin

# Register your models here.
from .models import Fee, Payment, Expense

class ExpenseResource(resources.ModelResource):
    class Meta:
        model = Expense
        fields = ('amount', 'description', 'document', 'user', 'created')

@admin.register(Expense)
class ExpenseAdmin(ImportExportModelAdmin):
    resource_class = ExpenseResource
    list_display = ('amount', 'description', 'document', 'user', 'created')
    list_filter = ['created']
    search_fields = ['user', 'description', 'amount']

class FeeResource(resources.ModelResource):
    class Meta:
        model = Fee
        fields = ('title', 'description', 'job', 'amount', 'is_active', 'created')

@admin.register(Fee)
class FeeAdmin(ImportExportModelAdmin):
    resource_class = FeeResource
    list_display = ('title', 'description', 'job', 'amount', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    list_editable = ['is_active']
    search_fields = ['title', 'desription', 'job']

class PaymentResource(resources.ModelResource):
    class Meta:
        model = Payment
        fields = ('client', 'fee', 'amount_paid', 'description', 'created')

@admin.register(Payment)
class PaymentAdmin(ImportExportModelAdmin):
    resource_class = PaymentResource
    list_display = ('client', 'fee', 'amount_paid', 'description', 'created')
    list_filter = ['created']
    search_fields = ['client', 'fee', 'amount_paid', 'description']
    