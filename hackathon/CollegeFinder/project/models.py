from django import forms
from django.db import models
from django.core.validators import MaxValueValidator, MinValueValidator, URLValidator, EmailValidator
from django.forms import widgets
# Create your models here.

class Degree(models.Model):
    name = models.CharField(max_length=100, null=True)
    faculty = models.ForeignKey('Facultie', on_delete=models.CASCADE, blank=True, default=1)
    preReq = models.ForeignKey('self', on_delete=models.CASCADE, blank=True, null=True)
    jobs = models.ManyToManyField('Job', blank=True, default='homeless')
    def __str__(self):
        return self.name

class Facultie(models.Model):
    name = models.CharField(max_length=100, null=True)
    degrees = models.ManyToManyField(Degree, blank=True)
    
    def __str__(self):
        return self.name
    

class Job(models.Model):
    name = models.CharField(max_length=100, null=True)
    avgSalary = models.IntegerField(null=True)
    reqDegree = models.ForeignKey(Degree, on_delete=models.CASCADE, blank=True)

    def __str__(self):
        return self.name

class Dean(models.Model):
    name = models.CharField(max_length=30, blank=True, null=True)
    faculty = models.ForeignKey(Facultie, on_delete=models.CASCADE)
    collegeWork = models.ForeignKey('College', on_delete=models.CASCADE)
    email = models.CharField(max_length=100, null=True, validators=[EmailValidator()])
    
    def __str__(self):
        return self.name


class College(models.Model):
    name = models.CharField(max_length=100, blank=True, null=True)
    location = models.CharField(max_length=100, null=True)
    website = models.CharField(max_length=100, blank=True, null=True, validators=[
                               URLValidator()], default='http://127.0.0.1:8000/#')
    number = models.CharField(max_length=30, blank=True, null=True)
    graduationRate = models.DecimalField(
        max_digits=5, decimal_places=2, validators=[MaxValueValidator(100), MinValueValidator(0)], blank=True, null=True)
    acceptanceRate = models.DecimalField(max_digits=5, decimal_places=2, validators=[
                                         MaxValueValidator(100), MinValueValidator(0)], blank=True, null=True)
    faculties = models.ManyToManyField(Facultie)
    degrees = models.ManyToManyField(Degree)
    deans = models.ManyToManyField(Dean, blank=True)

    def __str__(self):
        return self.name

class ContactFM(models.Model):
    fullName = models.CharField(max_length=100, blank=True, null=True)
    email = models.CharField(max_length=100, blank=True,
                             null=True, validators=[EmailValidator()])
    phone = models.CharField(max_length=30, blank=True, null=True)
    questions = models.CharField(max_length=240, blank=True, null=True)
    
    def __str__(self):
        return self.fullName
