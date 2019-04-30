from django.contrib import admin
from .models import GuestBook


class GuestBookAdmin(admin.ModelAdmin):
    list_display = ("name", "email", "content", "create_date")  # 列出列表中的项目
    list_filter = ("name",)     # 规定网页右边 FILTER 的显示内容


admin.site.register(GuestBook,GuestBookAdmin)
