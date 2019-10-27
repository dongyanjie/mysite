from django.db import models
from django.contrib.auth.models import User
# from mdeditor.fields import MDTextField

from django.urls import reverse


# 文章栏目表
class ArticleColumn(models.Model):
    user = models.ForeignKey(User, related_name='article_column', on_delete=models.CASCADE, verbose_name='创建者')  # 一对多
    column = models.CharField(max_length=100, verbose_name='栏目名称')
    classify = models.IntegerField(verbose_name='栏目分类', default=1)  # 1为技术杂谈  2为生活感悟
    created_time = models.DateField(auto_now_add=True, verbose_name='创建时间')

    class Meta:
        verbose_name = '文章栏目表'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.column


# 文章标签表
class ArticleTag(models.Model):
    user = models.ForeignKey(User, related_name='article_tag', on_delete=models.CASCADE, verbose_name='创建者')  # 一对多
    tag = models.CharField(max_length=100, verbose_name='标签')
    created_time = models.DateField(auto_now_add=True, verbose_name='创建时间')

    class Meta:
        verbose_name = '文章标签表'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.tag


# 文章表
class Article(models.Model):
    article_id = models.AutoField(primary_key=True)  # 文章唯一id
    author = models.ForeignKey(User, related_name='article_author', on_delete=models.CASCADE)  # 作者
    article_pic = models.CharField(max_length=100, verbose_name='文章插图', )  # 文章插图

    title = models.CharField(max_length=100, verbose_name='标题', )  # 标题
    column = models.ForeignKey(ArticleColumn, verbose_name='栏目', related_name='article_column', on_delete=models.CASCADE)  # 文章所属(栏目)
    tag = models.ManyToManyField(ArticleTag, related_name='article_tag', verbose_name='标签', blank=True)  # 文章标签
    brief_content = models.TextField(verbose_name='摘要', blank=True, null=True)  # 摘要
    content = models.TextField(verbose_name='内容')  # 主要内容
    publish_date = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')  # 发布日期
    click = models.IntegerField(verbose_name='浏览量', default=0)  # 浏览量（点击数）
    dianzan = models.ManyToManyField(User, related_name='article_dianzan', verbose_name='点赞数', blank=True)  # 点赞数

    def short_brief_content(self):
        if len(str(self.brief_content)) > 20:
            return "{}...".format(str(self.brief_content)[0:20])
        else:
            return str(self.brief_content)
    #   只有内容是管理员生成，用户无法修改时，allow_tags才设置为True
    short_brief_content.allow_tags = True

    class Meta:
        verbose_name = '文章表'
        verbose_name_plural = verbose_name
        ordering = ('-publish_date',)

    def __str__(self):
        return self.title


# 评论表
class ArticleComment(models.Model):
    article = models.ForeignKey(Article, related_name="article_comment", on_delete=models.CASCADE)  # 评论的文章
    commentator = models.CharField(max_length=80, verbose_name='评论者')
    content = models.TextField(verbose_name='评论内容')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='评论时间')

    class Meta:
        verbose_name = '评论表'
        verbose_name_plural = verbose_name
        ordering = ('-created_time',)

    def __str__(self):
        return "Comment by {0} on {1}".format(self.commentator, self.article)


# 留言表
class GuestBook(models.Model):
    name = models.CharField(max_length=20, verbose_name='姓名')  # 姓名
    email = models.EmailField(verbose_name='邮箱', null=True, blank=True)  # 邮箱
    content = models.TextField(verbose_name='留言内容')  # 留言内容
    create_date = models.DateTimeField(auto_now_add=True, verbose_name='留言时间')

    class Meta:
        verbose_name = '留言表'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
