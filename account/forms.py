from django import forms
from django.contrib.auth.models import User
from .models import UserInfo

#登录表单
class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)

#注册表单
class RegisterForm(forms.ModelForm):
    password = forms.CharField(label='password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Conform password', widget=forms.PasswordInput)
    class Meta:
        model = User
        fields = ("username", "email")
    def clean_pwd(self):
        cd = self.cleaned_data
        if cd['password'] != cd['password2']:
            raise forms.ValidationError("两次密码不一致")
        return cd['password2']

#用户信息表单
class UserInfoForm(forms.ModelForm):
    class Meta:
        model = UserInfo
        fields = ("phone", "birth", "about", "photo_url")
class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ("email",)


