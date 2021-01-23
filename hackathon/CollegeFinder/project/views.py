from django.db.models import query
from django.db.models.query import QuerySet
from django.shortcuts import render
from django.http import HttpResponse
from .filters import *
from .models import College
# Create your views here.

def Home(request):
    colleges = College.objects.all()
    MyFilter = MainFilter(request.GET, queryset=colleges)
    colleges = MyFilter.qs
    context = {'colleges':colleges,'MFilter': MyFilter}
    return render(request, "MainPage/index.html", context)

def ASearch(request):
    colleges = College.objects.all()
    MyFilter = MainFilter(request.GET, queryset=colleges)
    colleges = MyFilter.qs
    MyFilter2 = AFilter(request.GET, queryset=colleges)
    colleges = MyFilter2.qs
    context = {'colleges':colleges,'MFilter': MyFilter, 'AFilter': MyFilter2}
    return render(request, "MainPage/ASearch.html", context)

def Chats(request):
    return HttpResponse("Chats")

def HowItWorks(request):
    return HttpResponse("How It Works")

def About(request):
    return HttpResponse("About")
