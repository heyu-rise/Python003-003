from django import forms
from django.forms import widgets


class LoginForm(forms.Form):
    username = forms.CharField(widget=widgets.Input(attrs={'class': 'form-control form-control-user'}))
    password = forms.CharField(widget=widgets.PasswordInput(attrs={'class': 'form-control form-control-user'}), min_length=8)
