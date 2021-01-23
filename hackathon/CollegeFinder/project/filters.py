from django.db.models import fields
import django_filters
from django_filters import CharFilter, MultipleChoiceFilter
from .models import *

class MainFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')
    class Meta:
        model = College
        fields = ['name',]

class AFilter(django_filters.FilterSet):
    class Meta:
        model = College
        fields = ['location', 'faculties', 'degrees']
