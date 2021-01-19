from django.urls import path
from . import views

from files import views as files
from finances import views as finances
from others import views as others
from operations import views as operations

urlpatterns = [

    path('clients/<int:client_id>/pay-reg-fee', views.pay_reg_fee, name='pay-reg-fee'),
    path('clients/<int:client_id>/register', views.register, name='register'),
    
    path('clients', views.clients, name='clients'),
    path('jobs', views.jobs, name='jobs'),
    path('branches', views.branches, name='branches'),
    
    # operations
    path('clearances', operations.clearances, name='clearances'),
    path('contracts', operations.contracts, name='contracts'),
    path('interpols', operations.interpols, name='interpols'),
    path('interviews', operations.interviews, name='interviews'),
    path('medicals', operations.medicals, name='medicals'),
    path('passports', operations.passports, name='passports'),
    path('tickets', operations.tickets, name='tickets'),
    path('vettings', operations.vettings, name='vettings'),
    path('vetting-album', operations.vetting_album, name='vetting-album'),
    path('visas', operations.visas, name='visas'),
    path('travel-plans', operations.travel_plans, name='travel-plans'),
    path('other-ops', operations.other_ops, name='other-ops'),
    
    # finances
    path('payments', finances.payments, name='payments'),
    path('expenses', finances.expenses, name='expenses'),
    path('fees', finances.fees, name='fees'),

    # files
    path('clearance-files', files.clearance_files, name='clearance-files'),
    path('client-files', files.client_files, name='client-files'),

    # others
    path('tasks', others.tasks, name='tasks'),
    path('recruitments', others.recruitments, name='recruitments'),

    path('', views.index, name="index"),
]
