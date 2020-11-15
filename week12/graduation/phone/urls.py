from django.urls import path
from . import views

urlpatterns = [
    path('', views.index),
    path('comment/<int:content>', views.page_comment),
    path('api/good', views.good),
    path('api/comment/<int:content>', views.comment)
]
