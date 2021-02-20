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
    args = {
        'pending': Recruitment.objects.filter(status=0).count(),
        'active': Recruitment.objects.filter(status=1).count(),
        'done': Recruitment.objects.filter(status=2).count(),
        'cancelled': Recruitment.objects.filter(status=3).count(),
        'passed': Recruitment.objects.filter(status=4).count(),
        'failed': Recruitment.objects.filter(status=5).count(),
    }
    args['reruitments'] = Recruitment.objects.all()
    args['a'] = 'recruitments'
    return render(request, 'others/recruitments.html', args)
    