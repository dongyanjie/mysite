from django.db import models


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
