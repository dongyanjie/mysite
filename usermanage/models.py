from django.db import models
from django.contrib.auth.models import User


# 用户信息表
class UserInfo(models.Model):
    # models.CASCADE (级联删除)    models.models.SET_NULL (置空删除)
    user = models.OneToOneField(User, unique=True, related_name='user_info', on_delete=models.CASCADE)  # 关联User表
    register_time = models.DateTimeField(auto_now_add=True, verbose_name='注册时间')  # 注册时间
    last_login_time = models.DateTimeField(auto_now=True, verbose_name='最后一次登录时间')  # 最后一次登录时间
    last_login_ip = models.GenericIPAddressField(verbose_name='最后一次登录ip', default='0.0.0.0')  # 最后一次登录ip
    phone = models.CharField(verbose_name='手机号', max_length=20, null=True, blank=True)  # 手机号
    birth = models.DateField(verbose_name='生日', null=True, blank=True)  # 生日
    photo_url = models.ImageField(upload_to='static/images/user/%Y_%m_%d', verbose_name='头像路径', null=True,
                                  blank=True)  # 头像路径
    about = models.TextField(verbose_name='关于我', null=True, blank=True, default="记录自己生活点滴、互联网技术的原创")  # 个人简介

    class Meta:
        verbose_name = '用户信息表'
        verbose_name_plural = verbose_name

    def __str__(self):
        return 'user {}'.format(self.user.username)
