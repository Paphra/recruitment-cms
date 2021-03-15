from django.db import models
from django.utils import timezone
from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from settings.models import Stage

class Clearance(models.Model):
    """
    Clearances Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    clearance_file = models.ForeignKey("files.ClearanceFile", blank=True, null=True, on_delete=models.SET_NULL)
    submission_date = models.DateTimeField(null=True, blank=True)
    position_on_clearance = models.CharField(max_length=10, blank=True, null=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Clearance, dispatch_uid="update_clearance_stage")
def update_client_clearance_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'clearance' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'clearance' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)
            
class Contract(models.Model):
    """
    Contracts Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    employer = models.ForeignKey("settings.Employer", on_delete=models.CASCADE, blank=True, null=True)
    submission_date = models.DateTimeField(null=True, blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Contract, dispatch_uid="update_contract_stage")
def update_client_contract_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'contract' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'contract' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Interpol(models.Model):
    """
    Interpols Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    submission_date = models.DateTimeField(null=True, blank=True)
    clearance_date = models.DateTimeField(default=timezone.now)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Interpol, dispatch_uid="update_interpol_stage")
def update_client_interpol_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'interpol' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'interpol' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Interview(models.Model):
    """
    Interviews Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    nationality = models.CharField(max_length=100, blank=True)
    religion = models.CharField(max_length=100, blank=True)
    place_ob = models.CharField("Place Of Birth", max_length=100, blank=True)
    date_ob = models.DateField(null=True, blank=True)
    age = models.IntegerField(blank=True, null=True)
    married = models.BooleanField(default=False)
    spouse_name = models.CharField(max_length=100, blank=True)
    spouse_contact = models.CharField(max_length=100, blank=True)
    num_children = models.IntegerField("Number Of Children", default=0)
    home_town = models.CharField(max_length=100, blank=True)
    prev_job = models.CharField("Previous Job", max_length=100, blank=True)
    prev_employer = models.CharField("Previous Employer", max_length=200, blank=True)
    description = models.TextField(null=True, blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Interview, dispatch_uid="update_interview_stage")
def update_client_interview_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'interview' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'interview' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Medical(models.Model):
    """
    Medical Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    PREMEDICALS = 0
    MEDICALS  = 1
    OTHERS = 2
    TYPE_CHOICES = [
        (PREMEDICALS, 'Pre-Medical'),
        (MEDICALS, 'Medical'),
        (OTHERS, 'Others')
    ]
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    medical_type = models.IntegerField(choices=TYPE_CHOICES, default=PREMEDICALS)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Medical, dispatch_uid="update_medical_stage")
def update_client_medical_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'medical' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'medical' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Passport(models.Model):
    """
    Passport Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    agent = models.ForeignKey("settings.Agent", null=True, blank=True, on_delete=models.SET_NULL)
    passport_no = models.CharField("Passport Number", max_length=100, unique=True, blank=True, null=True)
    nationality = models.CharField(max_length=100, blank=True)
    place_ob = models.CharField("Place Of Birth", max_length=100, blank=True)
    date_ob = models.DateField(null=True, blank=True)
    issue_date = models.DateField(null=True, blank=True)
    expiry_date = models.DateField(null=True, blank=True)

    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Passport, dispatch_uid="update_passport_stage")
def update_client_passport_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'passport' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'passport' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Ticket(models.Model):
    """
    Ticket Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    agent = models.ForeignKey("settings.Agent", null=True, blank=True, on_delete=models.SET_NULL)
    ticket_no = models.CharField("Ticket Number", max_length=100, unique=True, blank=True, null=True)
    airline = models.CharField(max_length=100, blank=True)
    checkin = models.CharField(max_length=100, blank=True)
    issue_date = models.DateTimeField(null=True, blank=True)
    departure_date = models.DateTimeField(null=True, blank=True)
    arrival_date = models.DateTimeField(null=True, blank=True)

    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Ticket, dispatch_uid="update_ticket_stage")
def update_ticket_interview_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'ticket' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'ticket' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Training(models.Model):
    """
    Ticket Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    center = models.ForeignKey("settings.TrainingCenter", null=True, blank=True, on_delete=models.SET_NULL)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    debriefing = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    eeu = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    others = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Training, dispatch_uid="update_training_stage")
def update_client_training_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'training' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'training' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)
    
    if instance.status > 0:
        instance.client.vetting.training = True
    else:
        instance.client.vetting.training = False
    instance.client.vetting.save()
        
class Vetting(models.Model):
    """
    Vettings Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    destination = models.ForeignKey("settings.Destination", null=True, blank=True, on_delete=models.SET_NULL)
    employer = models.ForeignKey("settings.Employer", null=True, blank=True, on_delete=models.SET_NULL)
    
    district = models.CharField(max_length=100, blank=True)
    county = models.CharField(max_length=100, blank=True)
    subcounty = models.CharField(max_length=100, blank=True)
    parish = models.CharField(max_length=100, blank=True)
    village = models.CharField(max_length=100, blank=True)
    
    diso = models.BooleanField("DISO Approval", default=False)
    giso = models.BooleanField("GISO Approval", default=False)
    training = models.BooleanField("Training Approval", default=False)
    ministry = models.BooleanField("Ministry Approval", default=False)
    musaned = models.BooleanField("Musaned Approval", default=False)
    waqala = models.BooleanField("Waqala Approval", default=False)

    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Vetting, dispatch_uid="update_vetting_stage")
def update_client_vetting_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'vetting' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'vetting' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Visa(models.Model):
    """
    Visas Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    agent = models.ForeignKey("settings.Agent", null=True, blank=True, on_delete=models.SET_NULL)
    visa_no = models.CharField("Visa Number", max_length=100, unique=True, blank=True, null=True)
    issue_date = models.DateTimeField(null=True, blank=True)
    validity = models.CharField(max_length=100, blank=True)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Visa, dispatch_uid="update_visa_stage")
def update_client_visa_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'visa' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'visa' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class OtherOperation(models.Model):
    """
    Other Operations Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    item = models.CharField(max_length=100, blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=OtherOperation, dispatch_uid="update_otheroperation_stage")
def update_client_otheroperation_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'otheroperation' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'otheroperation' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)

class Travel(models.Model):
    """
    Travel Plans Table
    """
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    CANCELLED = 3
    PASSED = 4
    FAILED = 5
    STATUS_CHOICES = [
        (PENDING, 'Pending'),
        (ACTIVE, 'Active'),
        (DONE, 'Done'),
        (CANCELLED, 'Cancelled'),
        (PASSED, 'Passed'),
        (FAILED, 'Failed')
    ]
    client = models.OneToOneField("home.Client", on_delete=models.CASCADE)
    description = models.TextField(blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

@receiver(post_save, sender=Travel, dispatch_uid="update_travel_stage")
def update_client_travel_stage(sender, instance, **kwargs):
    stages = Stage.objects.filter(is_active=True)
    for stage in stages:
        if 'travel' in stage.title.lower() and instance.status > 0:
            instance.client.stages.add(stage)
        elif 'travel' in stage.title.lower() and instance.status < 1:
            instance.client.stages.remove(stage)
