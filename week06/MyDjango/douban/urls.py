from django.urls import path
from . import views

urlpatterns = [
    path('', views.books_short),
    path('<str:content>', views.books_short_filter),
]
