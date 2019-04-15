from django.urls import path, include
from . import views


urlpatterns = [
    path('', views.get_index_page),
    path('index/', views.get_index_page),
    path('detail/<int:article_id>', views.get_detail_page),

         ]