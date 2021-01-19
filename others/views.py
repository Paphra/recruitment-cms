from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from others.models import Task, Recruitment

@login_required()
def tasks(request):
    """
    Tasks View
    """
    args = {}
    args['tasks'] = Task.objects.all()
    args['a'] = 'tasks'
    return render(request, 'others/tasks.html', args)

@login_required()
def recruitments(request):
    """
    Recruitments View
    """
    args = {}
    args['reruitments'] = Recruitment.objects.all()
    args['a'] = 'recruitments'
    return render(request, 'reports/recruitments.html', args)
    