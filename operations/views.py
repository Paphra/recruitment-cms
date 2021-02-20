from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from operations.models import Clearance, Contract, Interpol, Interview, Medical, Passport, Ticket, Vetting, Visa, OtherOperation, Training, Travel

@login_required()
def clearances(request):
    """
    Clearances View
    """
    
    args = {
        'pending': Clearance.objects.filter(status=0).count(),
        'active': Clearance.objects.filter(status=1).count(),
        'done': Clearance.objects.filter(status=2).count(),
        'cancelled': Clearance.objects.filter(status=3).count(),
        'passed': Clearance.objects.filter(status=4).count(),
        'failed': Clearance.objects.filter(status=5).count(),
    }
    args['clearances'] = Clearance.objects.all()
    args['a'] = 'clearances'
    return render(request, 'operations/clearances.html', args)
    
@login_required()
def contracts(request):
    """
    Contracts View
    """
    args = {
        'pending': Contract.objects.filter(status=0).count(),
        'active': Contract.objects.filter(status=1).count(),
        'done': Contract.objects.filter(status=2).count(),
        'cancelled': Contract.objects.filter(status=3).count(),
        'passed': Contract.objects.filter(status=4).count(),
        'failed': Contract.objects.filter(status=5).count(),
    }
    args['contracts'] = Contract.objects.all()
    args['a'] = 'contracts'
    return render(request, 'operations/contracts.html', args)
    
@login_required()
def interpols(request):
    """
    Interpols View
    """
    args = {
        'pending': Interpol.objects.filter(status=0).count(),
        'active': Interpol.objects.filter(status=1).count(),
        'done': Interpol.objects.filter(status=2).count(),
        'cancelled': Interpol.objects.filter(status=3).count(),
        'passed': Interpol.objects.filter(status=4).count(),
        'failed': Interpol.objects.filter(status=5).count(),
    }
    args['interpols'] = Interpol.objects.all()
    args['a'] = 'interpols'
    return render(request, 'operations/interpols.html', args)
    
@login_required()
def interviews(request):
    """
    Interviews View
    """
    args = {
        'pending': Interview.objects.filter(status=0).count(),
        'active': Interview.objects.filter(status=1).count(),
        'done': Interview.objects.filter(status=2).count(),
        'cancelled': Interview.objects.filter(status=3).count(),
        'passed': Interview.objects.filter(status=4).count(),
        'failed': Interview.objects.filter(status=5).count(),
    }
    args['interviews'] = Interview.objects.all()
    args['a'] = 'interviews'
    return render(request, 'operations/interviews.html', args)
    
@login_required()
def trainings(request):
    """
    Trainings View
    """
    args = {
        'pending': Training.objects.filter(status=0).count(),
        'active': Training.objects.filter(status=1).count(),
        'done': Training.objects.filter(status=2).count(),
        'cancelled': Training.objects.filter(status=3).count(),
        'passed': Training.objects.filter(status=4).count(),
        'failed': Training.objects.filter(status=5).count(),
    }
    args['trainings'] = Training.objects.all()
    args['a'] = 'trainings'
    return render(request, 'operations/trainings.html', args)
    
@login_required()
def medicals(request):
    """
    Medicals View
    """
    args = {
        'pending': Medical.objects.filter(status=0).count(),
        'active': Medical.objects.filter(status=1).count(),
        'done': Medical.objects.filter(status=2).count(),
        'cancelled': Medical.objects.filter(status=3).count(),
        'passed': Medical.objects.filter(status=4).count(),
        'failed': Medical.objects.filter(status=5).count(),
    }
    args['medicals'] = Medical.objects.all()
    args['a'] = 'medicals'
    return render(request, 'operations/medicals.html', args)
    
@login_required()
def other_ops(request):
    """
    Other Operations View
    """
    args = {
        'pending': OtherOperation.objects.filter(status=0).count(),
        'active': OtherOperation.objects.filter(status=1).count(),
        'done': OtherOperation.objects.filter(status=2).count(),
        'cancelled': OtherOperation.objects.filter(status=3).count(),
        'passed': OtherOperation.objects.filter(status=4).count(),
        'failed': OtherOperation.objects.filter(status=5).count(),
    }
    args['other_ops'] = OtherOperation.objects.all()
    args['a'] = 'other-ops'
    return render(request, 'operations/other-ops.html', args)
    
@login_required()
def passports(request):
    """
    Passports View
    """
    args = {
        'pending': Passport.objects.filter(status=0).count(),
        'active': Passport.objects.filter(status=1).count(),
        'done': Passport.objects.filter(status=2).count(),
        'cancelled': Passport.objects.filter(status=3).count(),
        'passed': Passport.objects.filter(status=4).count(),
        'failed': Passport.objects.filter(status=5).count(),
    }
    args['passports'] = Passport.objects.all()
    args['a'] = 'passports'
    return render(request, 'operations/passports.html', args)
    
@login_required()
def tickets(request):
    """
    Tickets View
    """
    args = {
        'pending': Ticket.objects.filter(status=0).count(),
        'active': Ticket.objects.filter(status=1).count(),
        'done': Ticket.objects.filter(status=2).count(),
        'cancelled': Ticket.objects.filter(status=3).count(),
        'passed': Ticket.objects.filter(status=4).count(),
        'failed': Ticket.objects.filter(status=5).count(),
    }
    args['tickets'] = Ticket.objects.all()
    args['a'] = 'tickets'
    return render(request, 'operations/tickets.html', args)
    
@login_required()
def vettings(request):
    """
    Vettings View
    """
    args = {
        'pending': Vetting.objects.filter(status=0).count(),
        'active': Vetting.objects.filter(status=1).count(),
        'done': Vetting.objects.filter(status=2).count(),
        'cancelled': Vetting.objects.filter(status=3).count(),
        'passed': Vetting.objects.filter(status=4).count(),
        'failed': Vetting.objects.filter(status=5).count(),
    
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
        'pending': Vetting.objects.filter(status=0).count(),
        'active': Vetting.objects.filter(status=1).count(),
        'done': Vetting.objects.filter(status=2).count(),
        'cancelled': Vetting.objects.filter(status=3).count(),
        'passed': Vetting.objects.filter(status=4).count(),
        'failed': Vetting.objects.filter(status=5).count(),
    
        'vettings': Vetting.objects.all(),
        'a': 'vetting-album'
    }
    return render(request, 'operations/vetting/album.html', args)
    
@login_required()
def visas(request):
    """
    Visas View
    """
    args = {
        'pending': Visa.objects.filter(status=0).count(),
        'active': Visa.objects.filter(status=1).count(),
        'done': Visa.objects.filter(status=2).count(),
        'cancelled': Visa.objects.filter(status=3).count(),
        'passed': Visa.objects.filter(status=4).count(),
        'failed': Visa.objects.filter(status=5).count(),
    }
    args['visas'] = Visa.objects.all()
    args['a'] = 'visas'
    return render(request, 'operations/visas.html', args)
    
@login_required()
def travel_plans(request):
    """
    Travel Plans View
    """
    args = {
        'pending': Travel.objects.filter(status=0).count(),
        'active': Travel.objects.filter(status=1).count(),
        'done': Travel.objects.filter(status=2).count(),
        'cancelled': Travel.objects.filter(status=3).count(),
        'passed': Travel.objects.filter(status=4).count(),
        'failed': Travel.objects.filter(status=5).count(),
    }
    args['travel_plans'] = Travel.objects.all()
    args['a'] = 'travel-plans'
    return render(request, 'operations/travel-plans.html', args)
    