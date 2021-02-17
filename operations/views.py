from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from operations.models import Clearance, Contract, Interpol, Interview, Medical, Passport, Ticket, Vetting, Visa, OtherOperation, Travel

@login_required()
def clearances(request):
    """
    Clearances View
    """
    
    args = {}
    args['clearances'] = Clearance.objects.all()
    args['a'] = 'clearances'
    return render(request, 'operations/clearances.html', args)
    
@login_required()
def contracts(request):
    """
    Contracts View
    """
    args = {}
    args['contracts'] = Contract.objects.all()
    args['a'] = 'contracts'
    return render(request, 'operations/contracts.html', args)
    
@login_required()
def interpols(request):
    """
    Interpols View
    """
    args = {}
    args['interpols'] = Interpol.objects.all()
    args['a'] = 'interpols'
    return render(request, 'operations/interpols.html', args)
    
@login_required()
def interviews(request):
    """
    Interviews View
    """
    args = {}
    args['interviews'] = Interview.objects.all()
    args['a'] = 'interviews'
    return render(request, 'operations/interviews.html', args)
    
@login_required()
def medicals(request):
    """
    Medicals View
    """
    args = {}
    args['medicals'] = Medical.objects.all()
    args['a'] = 'medicals'
    return render(request, 'operations/medicals.html', args)
    
@login_required()
def other_ops(request):
    """
    Other Operations View
    """
    args = {}
    args['other_ops'] = OtherOperation.objects.all()
    args['a'] = 'other-ops'
    return render(request, 'operations/other-ops.html', args)
    
@login_required()
def passports(request):
    """
    Passports View
    """
    args = {}
    args['passports'] = Passport.objects.all()
    args['a'] = 'passports'
    return render(request, 'operations/passports.html', args)
    
@login_required()
def tickets(request):
    """
    Tickets View
    """
    args = {}
    args['tickets'] = Ticket.objects.all()
    args['a'] = 'tickets'
    return render(request, 'operations/tickets.html', args)
    
@login_required()
def vettings(request):
    """
    Vettings View
    """
    args = {
        'vettings': Vetting.objects.all(),
        'a': 'vettings'
    }
    return render(request, 'operations/vetting/list.html', args)
    
@login_required()
def vetting_album(request):
    """
    Vetting Album View
    """
    args = {
        'vettings': Vetting.objects.all(),
        'a': 'vetting-album'
    }
    return render(request, 'operations/vetting/album.html', args)
    
@login_required()
def visas(request):
    """
    Visas View
    """
    args = {}
    args['visas'] = Visa.objects.all()
    args['a'] = 'visas'
    return render(request, 'operations/visas.html', args)
    
@login_required()
def travel_plans(request):
    """
    Travel Plans View
    """
    args = {}
    args['travel_plans'] = Travel.objects.all()
    args['a'] = 'travel-plans'
    return render(request, 'operations/travel-plans.html', args)
    