from django.urls import path, include
from . import views

app_name = 'oprint'
urlpatterns = [
      path('upload-file/', views.upload_file, name='upload_file'),
      path('upload-photo/', views.upload_photo, name='upload_photo'),

]