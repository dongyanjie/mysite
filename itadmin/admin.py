from django.contrib import admin
from .models import ArticleColumn, Article

# Register your models here.
class ArticleColumnAdmin(admin.ModelAdmin):
    list_display = ("user", "column", "created_time") #列出列表中的项目
    list_filter = ("column",)
    search_fields = ['column']

class ArticleAdmin(admin.ModelAdmin):
    list_display = ("title", "column", "brief_content", "publish_date", "click", "author") #列出列表中的项目
    list_filter = ("column",)     #规定网页右边 FILTER 的显示内容
    search_fields = ['title', 'brief_content']

admin.site.register(ArticleColumn, ArticleColumnAdmin)
admin.site.register(Article, ArticleAdmin)