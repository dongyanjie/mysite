from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.auth import views as auth_views

app_name = "userManage"
urlpatterns = [
    path('login/', views.user_login, name='user_login'),
    path('logout/', views.user_logout, name='user_logout'),
    path('register/', views.user_register, name='user_register'),

    path('myinfo/', views.my_info, name='my_info'),
    path('myinfo-edit/', views.myinfo_edit, name='myinfo_edit'),
    path('password-change/', auth_views.PasswordChangeView.as_view(template_name="userManage/password_change_form.html",
                                                                   success_url="/userManage/password-change-done/"),
                                                                      name='password_change'),
    path('password-change-done/',
         auth_views.PasswordChangeDoneView.as_view(template_name="userManage/password_change_done.html"),
                                                          name='password_change_done'),
    path('my-image/', views.my_image, name='my_image')
]
