from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required

from home.models import Client, Job, Branch
from settings.models import Partner, Stage
from operations.models import Clearance, Contract, Interpol, Interview, Training, Medical, Passport, Ticket, Vetting, Visa, OtherOperation, Travel

@login_required()
def index(request):
    """
    Home screen, Dashboard
    """
    args = {
        # 'user': request.user,
        'a': 'index',
        'clients': Client.objects.filter(recruitment=None).count(),
        'branches': Branch.objects.count(),
        'jobs': Job.objects.count(),
        'partners': Partner.objects.count(),
        'stages': Stage.objects.all(),
    }
    return render(request, "home/index.html", args)

@login_required()
def clients(request):
    """
    Listing Clients
    """
    args = {
        'clients': Client.objects.all(),
        'a': 'clients'
    }
    return render(request, 'clients.html', args)

@login_required()
def pay_reg_fee(request, client_id):
    """
    Pay Client's Reg Fee
    """
    client = get_object_or_404(Client, pk=client_id)
    client.reg_fee = 1
    client.save()
    return redirect(clients)

@login_required()
def register(request, client_id):
    """
    Register Client
    """
    client = get_object_or_404(Client, pk=client_id)
    client.registered = True
    client.save()

    c = Clearance(client=client)
    c.save()
    c = Contract(client=client)
    c.save()
    c = Interpol(client=client)
    c.save()
    c = Interview(client=client)
    c.save()
    c = Training(client=client)
    c.save()
    c = Medical(client=client)
    c.save()
    c = Passport(client=client)
    c.save()
    c = Ticket(client=client)
    c.save()
    c = Vetting(client=client)
    c.save()
    c = Visa(client=client)
    c.save()
    c = Travel(client=client)
    c.save()
    c = OtherOperation(client=client)
    c.save()
    
    return redirect(clients)

@login_required()
def jobs(request):
    """
    List All Jobs
    """
    args = {}
    args['jobs'] = Job.objects.all()
    args['a'] = 'jobs'
    return render(request, 'jobs.html', args)

@login_required()
def branches(request):
    """
    List all Branches
    """
    if request.method == 'POST':
        branch = Branch()
        branch.title = request.POST['title']
        branch.address = request.POST['address']
        branch.contact = request.POST['contact']
        branch.description = request.POST['description']
        branch.established = request.POST['established']
        
        branch.save()
        return redirect('branches')
        
    args = {}
    args['branches'] = Branch.objects.all()
    args['a'] = 'branches'
    return render(request, 'branches.html', args)
