from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.Home),
    path('ASearch/', views.ASearch),
    path('chats/', views.Chats),
    path('howItWorks/', views.HowItWorks),
    path('about/', views.About),
    path('register/', views.Register),
    path('login/', views.Login),
    path('crud/', views.Crud),
    path('College/', views.CollegeP),
    path('Faculty/', views.FacultyP),
    path('Degree/', views.DegreeP),
    path('Job/', views.JobP), 
    path('Dean/', views.DeanP),
]
