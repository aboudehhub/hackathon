from django.db.models import query
from django.db.models.query import QuerySet
from django.forms.widgets import Widget
from django.shortcuts import render, redirect
from django.http import HttpResponse
from .filters import *
from .models import *
from .forms import *
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
    print(MyFilter2.qs)
    colleges = MyFilter2.qs
    
    context = {'colleges':colleges,'MFilter': MyFilter, 'AFilter': MyFilter2}
    return render(request, "MainPage/ASearch.html", context)

def Chats(request):
    return HttpResponse("Not Developped yet")

def About(request):
    return render(request, "SidePages/about.html")

def ContactF(request):
    form = ContactForm()
    
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect("/")
    context = {'form':form}
    return render(request, "crud/contactf.html", context)

def Crud(request):
    return render(request, "crud/create.html")

def CDisplay(request, w):
    context = {'w': w}
    if w == 'college':
        college = College.objects.all()
        context['colleges'] = college
    elif w == 'dean':
        dean = Dean.objects.all()
        context['deans'] = dean
    elif w == 'faculty':
        faculty = Facultie.objects.all()
        context['faculties'] = faculty
    elif w == 'degree':
        degree = Degree.objects.all()
        context['degrees'] = degree
    elif w == 'job':
        job = Job.objects.all()
        context['jobs'] = job
    else:
        return render(request, 'crud/contacts.html', {'contacts': ContactFM.objects.all()})

    return render(request, 'crud/Cdisplay.html', context)

def UDisplay(request, w):
    context = {'w': w}
    if w == 'college':
        college = College.objects.all()
        context['colleges'] = college
    elif w == 'dean':
        dean = Dean.objects.all()
        context['deans'] = dean
    elif w == 'faculty':
        faculty = Facultie.objects.all()
        context['faculties'] = faculty
    elif w == 'degree':
        degree = Degree.objects.all()
        context['degrees'] = degree
    elif w == 'job':
        job = Job.objects.all()
        context['jobs'] = job

    return render(request, 'MainPage/Udisplay.html', context)

def Create(request, what):
    if what == 'college':
        form = CollegeForm()
        if request.method == "POST":
            form = CollegeForm(request.POST)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'dean':
        form = DeanForm()
        if request.method == "POST":
            form = DeanForm(request.POST)
            if form.is_valid():
                form.save()
                return redirect('.')
    elif what == 'faculty':
        form = FacultyForm()
        if request.method == "POST":
            form = FacultyForm(request.POST)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'degree':
        form = DegreeForm()
        if request.method == "POST":
            form = DegreeForm(request.POST)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'job':
        form = JobForm()
        if request.method == "POST":
            form = JobForm(request.POST)
            if form.is_valid():
                form.save()
                return redirect('/')
    context = {'form': form, 'what': what}
    return render(request, "crud/crudC.html", context)


def Update(request, what, pk):
    if what == 'college':
        college = College.objects.get(id=pk)
        form = CollegeForm(instance=college)
        if request.method == "POST":
            form = CollegeForm(request.POST, instance=college)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'dean':
        dean = Dean.objects.get(id=pk)
        form = DeanForm(instance=dean)
        if request.method == "POST":
            form = DeanForm(request.POST, instance=dean)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'faculty':
        faculty = Facultie.objects.get(id=pk)
        form = FacultyForm(instance=faculty)
        if request.method == "POST":
            form = FacultyForm(request.POST, instance=faculty)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'degree':
        degree = Degree.objects.get(id=pk)
        form = DegreeForm(instance=degree)
        if request.method == "POST":
            form = DegreeForm(request.POST, instance=degree)
            if form.is_valid():
                form.save()
                return redirect('/')
    elif what == 'job':
        job = Job.objects.get(id=pk)
        form = JobForm(instance=job)
        if request.method == "POST":
            form = JobForm(request.POST, instance=job)
            if form.is_valid():
                form.save()
                return redirect('/')
    context = {'form': form, 'what': what}
    return render(request, "crud/crudU.html", context)
    
def Delete(request, what, pk):
    if what == 'college':
        college = College.objects.get(id=pk)
        if request.method == "POST":
            college.delete()
            return redirect('/')
    elif what == 'dean':
        dean = Dean.objects.get(id=pk)
        if request.method == "POST":
            dean.delete()
            return redirect('/')
    elif what == 'faculty':
        faculty = Facultie.objects.get(id=pk)
        if request.method == "POST":
            faculty.delete()
            return redirect('/')
    elif what == 'degree':
        degree =Degree.objects.get(id=pk)
        if request.method == "POST":
            degree.delete()
            return redirect('/')
    elif what == 'job':
        job = Job.objects.get(id=pk)
        if request.method == "POST":
            job.delete()
            return redirect('/')
    return render(request, "crud/crudD.html", {'what': what})
