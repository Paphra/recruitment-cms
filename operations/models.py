from django.db import models
from django.utils import timezone
# Create your models here.

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
    clearance_file = models.ForeignKey("files.ClearanceFile", on_delete=models.CASCADE)
    submission_date = models.DateTimeField(null=True, blank=True)
    position_on_clearance = models.CharField(max_length=10)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name
    
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
    employer = models.ForeignKey("settings.Employer", on_delete=models.CASCADE)
    submission_date = models.DateTimeField(null=True, blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.client.first_name

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
        return self.nationality

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
    passport_no = models.CharField("Passport Number", max_length=100, unique=True)
    nationality = models.CharField(max_length=100, blank=True)
    place_ob = models.CharField("Place Of Birth", max_length=100, blank=True)
    date_ob = models.DateField(null=True, blank=True)
    issue_date = models.DateField(null=True, blank=True)
    expiry_date = models.DateField(null=True, blank=True)

    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.passport_no

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
    ticket_no = models.CharField("Ticket Number", max_length=100, unique=True)
    airline = models.CharField(max_length=100, blank=True)
    checkin = models.CharField(max_length=100, blank=True)
    issue_date = models.DateTimeField(null=True, blank=True)
    departure_date = models.DateTimeField(null=True, blank=True)
    arrival_date = models.DateTimeField(null=True, blank=True)

    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.ticket_no

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
    visa_no = models.CharField("Visa Number", max_length=100, unique=True)
    issue_date = models.DateTimeField(null=True, blank=True)
    validity = models.CharField(max_length=100, blank=True)
    
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.visa_no

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
        return self.item

class TravelPlan(models.Model):
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
    client = models.ForeignKey("home.Client", on_delete=models.CASCADE)
    item = models.CharField(max_length=100, blank=True)
    status = models.IntegerField(choices=STATUS_CHOICES, default=PENDING)
    document = models.FileField(upload_to='clients/%Y/%m/%d/', blank=True)
    created = models.DateField(default=timezone.now)

    def __str__(self):
        return self.item
