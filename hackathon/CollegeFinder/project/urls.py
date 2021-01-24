from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.Home, name='home'),
    path('ASearch/', views.ASearch, name='ASearch'),
    path('chats/', views.Chats, name='chats'),
    path('about/', views.About, name='about'),
    path('ContactF/', views.ContactF, name='ContactF'),
    path('crud/<str:w>/', views.CDisplay, name='crudw'),
    path('\'\'/<str:w>/', views.UDisplay, name='show'),
    path('crud/Create/<str:what>/', views.Create, name='crudc'),
    path('crud/Update/<str:what>/<str:pk>', views.Update, name='crudu'),
    path('crud/Delete/<str:what>/<str:pk>', views.Delete, name='crudd'),
    path('crud/', views.Crud, name='crud'),
    path('contactf/', views.ContactF, name='contactf'),
]
