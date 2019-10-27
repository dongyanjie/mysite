from django.contrib import admin
from .models import ArticleColumn, ArticleTag, Article, ArticleComment, GuestBook


# 文章栏目.
class ArticleColumnAdmin(admin.ModelAdmin):
    list_display = ("user", "column", "created_time")  # 列出列表中的项目
    list_filter = ("column",)
    search_fields = ['column']


# 文章标签.
class ArticleTagAdmin(admin.ModelAdmin):
    list_display = ("user", "tag", "created_time")  # 列出列表中的项目
    list_filter = ("tag",)
    search_fields = ['tag']


# 文章.
class ArticleAdmin(admin.ModelAdmin):
    list_display = (
        "title", "column", "short_brief_content", "publish_date", "click", "author", "article_pic")  # 列出列表中的项目
    list_filter = ("column", "tag")  # 规定网页右边 FILTER 的显示内容
    search_fields = ['title', 'brief_content']


# 文章评论.
class ArticleCommentAdmin(admin.ModelAdmin):
    list_display = ("article", "commentator", "content", "created_time")  # 列出列表中的项目
    list_filter = ("commentator",)  # 规定网页右边 FILTER 的显示内容
    search_fields = ['commentator']


# 留言板
class GuestBookAdmin(admin.ModelAdmin):
    list_display = ("name", "email", "content", "create_date")  # 列出列表中的项目
    list_filter = ("name",)  # 规定网页右边 FILTER 的显示内容


admin.site.register(ArticleColumn, ArticleColumnAdmin)
admin.site.register(ArticleTag, ArticleTagAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(ArticleComment, ArticleCommentAdmin)
admin.site.register(GuestBook, GuestBookAdmin)
