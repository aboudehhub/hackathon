from django.contrib import admin

# Register your models here.

from .models import *

admin.site.register(College)
admin.site.register(Facultie)
admin.site.register(Degree)
admin.site.register(Job)
admin.site.register(Dean)