from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse

# 文章栏目表
class  ArticleColumn(models.Model):
    user = models.ForeignKey(User, related_name='article_column', on_delete=models.CASCADE, verbose_name='创建者') #一对多
    column = models.CharField(max_length=100, verbose_name='栏目')
    created_time = models.DateField(auto_now_add=True, verbose_name='创建时间')

    def __str__(self):
        return self.column

# 文章表
class Article(models.Model):
    article_id = models.AutoField(primary_key=True)  # 文章唯一id
    author = models.ForeignKey(User, related_name='article_author', on_delete=models.CASCADE) #作者
    title = models.CharField(max_length=100, verbose_name='标题',)  # 标题
    brief_content = models.TextField(verbose_name='摘要', blank=True, null=True)  # 摘要
    content = models.TextField(verbose_name='内容')  # 主要内容
    column = models.ForeignKey(ArticleColumn, related_name='article_column', on_delete=models.CASCADE)  # 文章所属标签(栏目)
    publish_date = models.DateTimeField(auto_now=True, verbose_name='发布时间')  # 发布日期
    click = models.IntegerField(verbose_name='浏览量', default=0)  # 浏览量（点击数）
    dianzan = models.IntegerField(verbose_name='点赞数', default=0)  # 点赞数

    def __str__(self):
        return self.title

# 重新save方法
    def save(self, *args, **kwargs):
        super(Article, self).save(*args, **kwargs)
