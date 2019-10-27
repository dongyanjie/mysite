from django.contrib import admin
from .models import UserInfo


class UserInfoAdmin(admin.ModelAdmin):
    list_display = ("user", "phone", "birth", "about", "photo_url", "last_login_time")  # 列出列表中的项目
    list_filter = ("birth", "phone")  # 规定网页右边 FILTER 的显示内容


admin.site.register(UserInfo, UserInfoAdmin)
