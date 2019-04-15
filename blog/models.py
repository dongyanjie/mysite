from django.db import models
# Create your models here.

# 文章表
class Article(models.Model):
    article_id = models.AutoField(primary_key=True)  # 文章唯一id
    title = models.TextField(max_length=100, verbose_name='标题',)  # 标题
    brief_content = models.TextField(verbose_name='摘要')  # 摘要
    content = models.TextField(verbose_name='内容')  # 主要内容
    publish_date = models.DateTimeField(auto_now=True, verbose_name='发布时间')  # 发布日期
    article_click = models.IntegerField(verbose_name='浏览量', default=0)  # 浏览量（点击数）
    article_dianzan = models.IntegerField(verbose_name='点赞数', default=0)  # 点赞数
    article_column = models.CharField(max_length=30, verbose_name='标签(栏目)')  # 文章所属标签(栏目)

    def __str__(self):
        return self.title

#标签（栏目）表
