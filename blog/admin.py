from django.contrib import admin
from .models import Article

# Register your models here.
class ArticleAdmin(admin.ModelAdmin):
    list_display = ("title", "brief_content", "publish_date", "article_click", "article_key") #列出列表中的项目
    list_filter = ("article_key",)     #规定网页右边 FILTER 的显示内容

admin.site.register(Article,ArticleAdmin)
