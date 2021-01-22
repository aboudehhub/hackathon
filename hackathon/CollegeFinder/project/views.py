from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def Home(request):
    return render(request, "MainPage/index.html")

def Chats(request):
    return HttpResponse("Chats")

def HowItWorks(request):
    return HttpResponse("How It Works")

def About(request):
    return HttpResponse("About")