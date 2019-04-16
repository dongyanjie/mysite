from django.db import models
from django.contrib.auth.models import User

# Create your models here.
#文章栏目
class  ArticleColumn(models.Model):
    user = models.ForeignKey(User, related_name='atticle_column', on_delete=models.CASCADE) #一对多
    column = models.CharField(max_length=100, verbose_name='栏目')
    created_time = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.column
