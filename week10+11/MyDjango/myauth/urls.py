from django.urls import path
from . import views

urlpatterns = [
    path('', views.my_login),
    path('douban', views.books_short),
    path('douban/<str:content>', views.books_short_filter),
]
