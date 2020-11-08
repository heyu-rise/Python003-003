from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect

from .form import LoginForm
from .models import Comment


def books_short(request):
    content = ''
    queryset = Comment.objects.all()
    conditions = {'star__gt': 3}
    comments = queryset.filter(**conditions)
    print(comments)
    return render(request, 'index.html', locals())


def books_short_filter(request, content):
    queryset = Comment.objects.all()
    conditions = {'star__gt': 3}
    if content is not None or len(str(content)) > 0:
        conditions['content__contains'] = content
    comments = queryset.filter(**conditions)
    return render(request, 'index.html', locals())


def my_login(request):
    if request.method == 'POST':
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            cd = login_form.cleaned_data
            user = authenticate(username=cd['username'], password=cd['password'])
            if user:
                login(request, user)
                return redirect('/douban')
            else:
                return render(request, 'login.html', {'form': login_form, 'msg': '用户名或密码错误'})
    if request.method == "GET":
        login_form = LoginForm()
        return render(request, 'login.html', {'form': login_form})
