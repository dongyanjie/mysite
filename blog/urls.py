from django.urls import path, include
from . import views

# 路由

app_name = 'blog'
urlpatterns = [
    path('', views.get_index_page),
    path('index/', views.get_index_page, name='get_index_page'),
    path('detail/<int:article_id>/', views.get_detail_page, name='get_detail_page'),  # 详情页
    path('cetegory/<int:id>/', views.get_cetegory_page, name='get_cetegory_page'),  # 指定栏目文章

    path('search/', views.get_search_page, name='get_search_page'),  # 搜索指定关键字

    path('resources/', views.resources, name='resources'),  # 关于我
    path('guestbook/', views.guestbook, name='guestbook'),  # 留言板
    path('order-print/', views.order_print, name='order_print'),  # 关于我

    path('article-dianzan/', views.article_dianzan, name='article_dianzan'),
    path('article-comment/', views.article_comment, name='article_comment'),

]
