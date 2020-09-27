from django.urls import path
from . import views

urlpatterns = [
    path('index', views.books_short),
    path('index/<str:content>', views.books_short_filter),
]
