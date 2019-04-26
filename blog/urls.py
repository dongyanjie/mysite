from django.urls import path, include
from . import views

app_name = 'blog'
urlpatterns = [
    path('', views.get_index_page),
    path('index/', views.get_index_page, name='get_index_page'),
    path('detail/<int:article_id>/', views.get_detail_page, name='get_detail_page'),
    path('article-dianzan/', views.article_dianzan, name='article_dianzan'),

]