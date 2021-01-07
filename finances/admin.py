from django.contrib import admin

# Register your models here.
from .models import Fee, Payment, Expense

@admin.register(Expense)
class ExpenseAdmin(admin.ModelAdmin):
    list_display = ('amount', 'description', 'document', 'user', 'created')
    list_filter = ['created']
    search_fields = ['user', 'description', 'amount']

@admin.register(Fee)
class FeeAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'job', 'amount', 'is_active', 'created')
    list_filter = ['is_active', 'created']
    list_editable = ['is_active']
    search_fields = ['title', 'desription', 'job']

@admin.register(Payment)
class PaymentAdmin(admin.ModelAdmin):
    list_display = ('client', 'fee', 'amount_paid', 'description', 'created')
    list_filter = ['created']
    search_fields = ['client', 'fee', 'amount_paid', 'description']
    