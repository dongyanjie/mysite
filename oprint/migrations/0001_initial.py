# Generated by Django 2.1 on 2019-11-07 09:57

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='FilePrint',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('file_url', models.FileField(blank=True, null=True, upload_to='filePrint/%Y_%m_%d/', verbose_name='存储路径')),
                ('sided', models.IntegerField(default=1, verbose_name='打印单双面')),
                ('color', models.IntegerField(default=1, verbose_name='打印彩色黑白')),
                ('page_count', models.CharField(max_length=200, verbose_name='总页数')),
                ('print_number', models.IntegerField(default=1, verbose_name='打印份数')),
                ('price', models.CharField(max_length=100, verbose_name='总价格')),
                ('name', models.CharField(max_length=20, verbose_name='客户姓名')),
                ('phone_or_qq', models.CharField(blank=True, max_length=12, null=True, verbose_name='联系方式')),
                ('what_time', models.CharField(max_length=30, verbose_name='什么时间要？')),
                ('what_place', models.CharField(max_length=30, verbose_name='配送到哪里？')),
                ('print_point', models.CharField(blank=True, max_length=100, null=True, verbose_name='打印点（打印码）')),
                ('remark', models.TextField(verbose_name='备注')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间')),
                ('print_status', models.IntegerField(default=1, verbose_name='打印状态')),
            ],
            options={
                'verbose_name': '文件打印表',
                'verbose_name_plural': '文件打印表',
                'ordering': ('-create_time',),
            },
        ),
        migrations.CreateModel(
            name='PhotoPrint',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('photo_url', models.FileField(blank=True, null=True, upload_to='photoPrint/%Y_%m_%d/', verbose_name='存储路径')),
                ('photo_size', models.IntegerField(default=1, verbose_name='照片尺寸')),
                ('print_number', models.IntegerField(default=1, verbose_name='打印份数')),
                ('price', models.CharField(max_length=100, verbose_name='总价格')),
                ('name', models.CharField(max_length=20, verbose_name='客户姓名')),
                ('phone_or_qq', models.CharField(blank=True, max_length=12, null=True, verbose_name='联系方式')),
                ('what_time', models.CharField(max_length=30, verbose_name='什么时间要？')),
                ('what_place', models.CharField(max_length=30, verbose_name='配送到哪里？')),
                ('print_point', models.CharField(blank=True, max_length=100, null=True, verbose_name='打印点（打印码）')),
                ('remark', models.TextField(verbose_name='备注')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间')),
                ('print_status', models.IntegerField(default=1, verbose_name='打印状态')),
            ],
            options={
                'verbose_name': '照片打印表',
                'verbose_name_plural': '照片打印表',
                'ordering': ('-create_time',),
            },
        ),
    ]
