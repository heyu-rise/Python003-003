from django.shortcuts import render

# Create your views here.
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
