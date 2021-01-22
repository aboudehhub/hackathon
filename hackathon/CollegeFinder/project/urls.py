from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.Home),
    path('Chats/', views.Chats),
    path('HowItWorks/', views.HowItWorks),
    path('About/', views.About),
]
