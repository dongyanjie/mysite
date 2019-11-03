from django.contrib import admin
from .models import FilePrint, PhotoPrint


# 注入到后台管理

# 文件打印
class FilePrintAdmin(admin.ModelAdmin):
    list_display = ("file_url", "sided", "color", "print_number", "page_count", "price",
                    "name", "phone_or_qq", "what_time", "what_place", "print_point", "remark",
                    "create_time", "print_status",
                    )  # 列出列表中的项目
    search_fields = ['name']
    # 设置哪些字段可以点击进入编辑界面，
    list_display_links = ('sided', 'color', 'print_status')


# 图片打印
class PhotoPrintAdmin(admin.ModelAdmin):
    list_display = (
        "photo_url", "photo_size", "print_number", "price",
        "name", "phone_or_qq", "what_time", "what_place", "print_point", "remark",
        "create_time", "print_status",
    )  # 列出列表中的项目
    search_fields = ['name']
    # 设置哪些字段可以点击进入编辑界面，
    list_display_links = ('photo_size', 'print_status')


admin.site.register(FilePrint, FilePrintAdmin)
admin.site.register(PhotoPrint, PhotoPrintAdmin)
