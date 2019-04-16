from django.urls import path, include
from . import views

app_name = 'itadmin'
urlpatterns = [
    path('article-column/', views.article_column, name='article_column'),
    path('edit-column/', views.edit_article_column, name='edit_article_column'),
    path('del-column/', views.del_article_column, name='del_article_column'),

]