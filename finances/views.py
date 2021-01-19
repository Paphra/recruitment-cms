from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from finances.models import Fee, Payment, Expense

@login_required()
def fees(request):
    """
    Fees View
    """
    args = {}
    args['fees'] = Fee.objects.all()
    args['a'] = 'fees'
    return render(request, 'finances/fees.html', args)
    
@login_required()
def expenses(request):
    """
    Expenses View
    """
    args = {}
    args['expenses'] = Expense.objects.all()
    args['a'] = 'expenses'
    return render(request, 'finances/expenses.html', args)
    
@login_required()
def payments(request):
    """
    Payments View
    """
    args = {}
    args['payments'] = Payment.objects.all()
    args['a'] = 'payments'
    return render(request, 'finances/payments.html', args)
    