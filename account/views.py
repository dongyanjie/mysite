from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import authenticate, login, logout

from django.contrib.auth.decorators import login_required   #装饰器 用户判断用户是否登录
from django.views.decorators.csrf import csrf_exempt   #装饰器  解决csrf问题

from django.contrib.auth.models import User
from .models import UserInfo
from .forms import LoginForm, RegisterForm, UserInfoForm, UserForm


# json.loads()函数是将字符串转化为字典, json.dumps()函数是将字典转化为字符串
# 用户登录
def user_login(request):
    if request.method == 'POST':
        # last_login_ip = request.META['REMOTE_ADDR']  #获取登录ip
        # error_message = {'status': False, 'message': None} # 返回错误信息

        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            cd = login_form.cleaned_data
            user = authenticate(username=cd['username'], password=cd['password'])
            if user:
                login(request, user)
                return redirect(reverse('account:user_login'))
            else:
                return HttpResponse('error')
        else:
            return HttpResponse('Invalid login')
    if request.method == 'GET':
        login_form = LoginForm()
        return render(request, 'account/login.html', {'form': login_form})

#用户注销
def user_logout(request):
    logout(request)
    return redirect(reverse('account:user_login'))

#用户注册
def user_register(request):
    if request.method == 'POST':
        user_form = RegisterForm(request.POST)
        userinfo_form = UserInfoForm(request.POST)
        if user_form.is_valid():
            new_user = user_form.save(commit=False)
            new_user.set_password(user_form.cleaned_data['password'])
            new_user.save()
            new_userinfo = userinfo_form.save(commit=False)
            new_userinfo.user = new_user
            new_userinfo.save()
            UserInfo.objects.create(user=new_user)
            return HttpResponseRedirect(reverse('account:user_login'))
        else:
            return HttpResponse('error')
    if request.method == 'GET':
        user_form = RegisterForm()
        userinfo_form = UserInfoForm()
        return render(request, 'account/register.html', {'form': user_form, 'info_form': userinfo_form})


#用户信息展示
@login_required(login_url='/account/login/')
def my_info(request):
    user = User.objects.get(username=request.user.username)
    userinfo = UserInfo.objects.get(user=user)
    return render(request, 'account/myinfo.html', {'user': user, 'userinfo': userinfo})

#编辑用户信息
@login_required(login_url='/account/login/')
def myinfo_edit(request):
    user = User.objects.get(username=request.user.username)
    userinfo = UserInfo.objects.get(user=request.user)

    if request.method == 'POST':
        user_form = UserForm(request.POST)
        userinfo_form = UserInfoForm(request.POST)
        if user_form.is_valid() * userinfo_form.is_valid():
            user_cd = user_form.cleaned_data
            userinfo_cd = userinfo_form.cleaned_data
            user.email = user_cd['email']
            userinfo.birth = userinfo_cd['birth']
            userinfo.phone = userinfo_cd['phone']
            userinfo.about = userinfo_cd['about']
            user.save()
            userinfo.save()
        return HttpResponseRedirect(reverse('account:my_info'))
    else:
        user_form = UserForm(instance=request.user)
        userinfo_form = UserInfoForm({'birth': userinfo.birth,
                                      'phone': userinfo.phone,
                                      'about': userinfo.about,
                                      })
        return render(request, 'account/myinfo_edit.html', {'user_form': user_form,
                                                            'userinfo_form': userinfo_form,
                                                            })

#用户头像上传
@login_required(login_url='/account/login/')
def my_image(request):
    if request.method == 'POST':
        img = request.POST['img']
        userinfo = UserInfo.objects.get(user=request.user.id)
        userinfo.photo_url = img
        userinfo.save()
        return HttpResponse("1")
    else:
        return render(request, 'account/imagecrop.html')
