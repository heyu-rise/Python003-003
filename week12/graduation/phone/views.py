from django.http import JsonResponse
from django.shortcuts import render
import json
import re

from .models import Good, GoodComment

chinese = '[\u4E00-\u9FA5]+'
number = '(\\d+(\\.\\d+)?)'


def index(request):
    queryset = Good.objects.all()
    goods = queryset.filter().all()
    return render(request, 'index.html', locals())


def page_comment(request, content):
    queryset = Good.objects.all()
    conditions = {'id': content}
    goods = queryset.filter(**conditions).all()
    good_item = goods[0]
    top_words = re.findall(chinese, good_item.top_word)
    top_words2 = re.findall(number, good_item.top_word)
    top0 = top_words[0]
    top1 = top_words[1]
    top2 = top_words[2]
    top3 = top_words[3]
    top4 = top_words[4]
    weight = []
    for a in top_words2:
        weight.append(float(a[0]))
    print(top_words)
    print(weight)
    queryset = GoodComment.objects.all()
    conditions = {'good_id': content}
    comments = queryset.filter(**conditions).all()
    good_comment = 0
    bad_comment = 0
    if len(comments) > 0:
        for comment_item in comments:
            if comment_item.positive == 0:
                good_comment = good_comment + 1
            else:
                bad_comment = bad_comment + 1
    return render(request, 'comment.html', locals())


def good(request):
    queryset = Good.objects.all()
    goods = queryset.filter().all().values_list('name', 'desc', 'favorable_rate', 'top_word')
    return JsonResponse(list(goods), safe=False)


def comment(request, content):
    queryset = GoodComment.objects.all()
    conditions = {'good_id': content}
    comments = queryset.filter(**conditions).all().values_list('good_id', 'comment', 'positive', 'create_time')
    return JsonResponse(list(comments), safe=False)
