from django.contrib import admin
from .models import ArticleColumn

# Register your models here.
class ArticleColumnAdmin(admin.ModelAdmin):
    list_display = ("user", "column", "created_time") #列出列表中的项目
    list_filter = ("column",)
    search_fields = ['column']

admin.site.register(ArticleColumn, ArticleColumnAdmin)