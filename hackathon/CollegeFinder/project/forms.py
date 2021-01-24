from django.forms import ModelForm, fields
from .models import *


class CollegeForm(ModelForm):
    class Meta:
        model = College
        fields = '__all__'


class FacultyForm(ModelForm):
    class Meta:
        model = Facultie
        fields = '__all__'


class DegreeForm(ModelForm):
    class Meta:
        model = Degree
        fields = '__all__'


class JobForm(ModelForm):
    class Meta:
        model = Job
        fields = '__all__'


class DeanForm(ModelForm):
    class Meta:
        model = Dean
        fields = '__all__'
