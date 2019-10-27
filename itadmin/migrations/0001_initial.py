# Generated by Django 2.1 on 2019-10-27 15:31

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('article_id', models.AutoField(primary_key=True, serialize=False)),
                ('article_pic', models.CharField(max_length=100, verbose_name='文章插图')),
                ('title', models.CharField(max_length=100, verbose_name='标题')),
                ('brief_content', models.TextField(blank=True, null=True, verbose_name='摘要')),
                ('content', models.TextField(verbose_name='内容')),
                ('publish_date', models.DateTimeField(auto_now_add=True, verbose_name='发布时间')),
                ('click', models.IntegerField(default=0, verbose_name='浏览量')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_author', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': '文章表',
                'verbose_name_plural': '文章表',
                'ordering': ('-publish_date',),
            },
        ),
        migrations.CreateModel(
            name='ArticleColumn',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('column', models.CharField(max_length=100, verbose_name='栏目名称')),
                ('classify', models.IntegerField(default=1, verbose_name='栏目分类')),
                ('created_time', models.DateField(auto_now_add=True, verbose_name='创建时间')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_column', to=settings.AUTH_USER_MODEL, verbose_name='创建者')),
            ],
            options={
                'verbose_name': '文章栏目表',
                'verbose_name_plural': '文章栏目表',
            },
        ),
        migrations.CreateModel(
            name='ArticleComment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('commentator', models.CharField(max_length=80, verbose_name='评论者')),
                ('content', models.TextField(verbose_name='评论内容')),
                ('created_time', models.DateTimeField(auto_now_add=True, verbose_name='评论时间')),
                ('article', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_comment', to='itadmin.Article')),
            ],
            options={
                'verbose_name': '评论表',
                'verbose_name_plural': '评论表',
                'ordering': ('-created_time',),
            },
        ),
        migrations.CreateModel(
            name='ArticleTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag', models.CharField(max_length=100, verbose_name='标签')),
                ('created_time', models.DateField(auto_now_add=True, verbose_name='创建时间')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_tag', to=settings.AUTH_USER_MODEL, verbose_name='创建者')),
            ],
            options={
                'verbose_name': '文章标签表',
                'verbose_name_plural': '文章标签表',
            },
        ),
        migrations.CreateModel(
            name='GuestBook',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, verbose_name='姓名')),
                ('email', models.EmailField(blank=True, max_length=254, null=True, verbose_name='邮箱')),
                ('content', models.TextField(verbose_name='留言内容')),
                ('create_date', models.DateTimeField(auto_now_add=True, verbose_name='留言时间')),
            ],
            options={
                'verbose_name': '留言表',
                'verbose_name_plural': '留言表',
            },
        ),
        migrations.AddField(
            model_name='article',
            name='column',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_column', to='itadmin.ArticleColumn', verbose_name='栏目'),
        ),
        migrations.AddField(
            model_name='article',
            name='dianzan',
            field=models.ManyToManyField(blank=True, related_name='article_dianzan', to=settings.AUTH_USER_MODEL, verbose_name='点赞数'),
        ),
        migrations.AddField(
            model_name='article',
            name='tag',
            field=models.ManyToManyField(blank=True, related_name='article_tag', to='itadmin.ArticleTag', verbose_name='标签'),
        ),
    ]
