from django.contrib import admin
from .models import ArticleColumn, Article, ArticleComment

# 文章栏目.
class ArticleColumnAdmin(admin.ModelAdmin):
    list_display = ("user", "column", "created_time") #列出列表中的项目
    list_filter = ("column",)
    search_fields = ['column']

# 文章.
class ArticleAdmin(admin.ModelAdmin):
    list_display = ("title", "column", "short_brief_content", "publish_date", "click", "author") #列出列表中的项目
    list_filter = ("column", "tag")     #规定网页右边 FILTER 的显示内容
    search_fields = ['title', 'brief_content']

# 文章评论.
class ArticleCommentAdmin(admin.ModelAdmin):
    list_display = ("article", "commentator", "content", "created_time") #列出列表中的项目
    list_filter = ("commentator",)     #规定网页右边 FILTER 的显示内容
    search_fields = ['commentator']


admin.site.register(ArticleColumn, ArticleColumnAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(ArticleComment, ArticleCommentAdmin)
