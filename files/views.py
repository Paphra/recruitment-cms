from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from files.models import Photo, ClearanceFile, ClientFile

@login_required()
def clearance_files(request):
    """
    Clearance Files View
    """
    args = {}
    args['files'] = ClearanceFile.objects.all()
    args['a'] = 'clearance-files'
    return render(request, 'files/clearance-files.html', args)

@login_required()
def client_files(request):
    """
    Client Files View
    """
    args = {}
    args['files'] = ClientFile.objects.all()
    args['a'] = 'client-files'
    return render(request, 'files/client-files.html', args)
