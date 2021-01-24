from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.Home, name='home'),
    path('ASearch/', views.ASearch, name='ASearch'),
    path('chats/', views.Chats, name='chats'),
    path('howItWorks/', views.HowItWorks, name='howItWorks'),
    path('about/', views.About, name='about'),
    path('register/', views.Register, name='register'),
    path('login/', views.Login, name='login'),
    path('crud/<str:w>/', views.Display, name='crudw'),
    path('crud/Create/<str:what>/', views.Create, name='crudc'),
    path('crud/Update/<str:what>/<str:pk>', views.Update, name='crudu'),
    path('crud/Delete/<str:what>/<str:pk>', views.Delete, name='crudd'),
    path('crud/', views.Crud, name='crud'),
]
