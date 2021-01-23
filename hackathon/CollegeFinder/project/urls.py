from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.Home),
    path('ASearch/', views.ASearch),
    path('Chats/', views.Chats),
    path('HowItWorks/', views.HowItWorks),
    path('About/', views.About),
]
