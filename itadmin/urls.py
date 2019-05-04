from django.urls import path, include
from . import views
from django.views.generic import TemplateView   #通用视图

app_name = 'itadmin'
urlpatterns = [
    path('', views.article_column),
# 栏目
    path('article-column/', views.article_column, name='article_column'),
    path('edit-column/', views.edit_article_column, name='edit_article_column'),
    path('del-column/', views.del_article_column, name='del_article_column'),
# 标签
    path('article-tag/', views.article_tag, name='article_tag'),
    path('del-tag/', views.del_article_tag, name='del_article_tag'),
# 文章
    path('article/', views.article, name='article'),
    path('article-detail/<int: article_id>', views.article_detail, name='article_detail'),
    path('edit-article/', views.edit_article, name='edit_article'),
    path('del-article/', views.del_article, name='del_article'),

]