from django.db import models


# #让上传的文件路径动态地与user的名字有关
# def upload_to(instance, filename):
#     return '/'.join([MEDIA_ROOT, instance.user_name, filename])


# 文件打印表
class FilePrint(models.Model):
    id = models.AutoField(primary_key=True)  # 自增id
    file_url = models.FileField(upload_to='filePrint/%Y_%m_%d/', verbose_name='存储路径', blank=True, null=True)  # 存储路径

    sided = models.IntegerField(verbose_name='打印单双面', default=1, )  # 1为单面 2为双面
    color = models.IntegerField(verbose_name='打印彩色黑白', default=1, )  # 1为黑白 2为彩印
    page_count = models.CharField(verbose_name='总页数', max_length=200, )  # 总页数
    print_number = models.IntegerField(verbose_name='打印份数', default=1, )  # 打印份数
    price = models.CharField(max_length=100, verbose_name='总价格', )  # 总价格

    #
    name = models.CharField(max_length=20, verbose_name='客户姓名', )  # 客户姓名
    phone_or_qq = models.CharField(max_length=12, verbose_name='联系方式', blank=True, null=True)  # 联系方式
    what_time = models.CharField(max_length=30, verbose_name='什么时间要？', )  # 什么时间要？
    what_place = models.CharField(max_length=30, verbose_name='配送到哪里？', )  # 配送到哪里？
    print_point = models.CharField(max_length=100, verbose_name='打印点（打印码）', blank=True, null=True)  # 打印点（打印码）
    remark = models.TextField(verbose_name='备注', )  # 备注
    create_time = models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间', )  # 订单创建时间
    # 1为已提交 2为管理员已接收 3为待配送 4为已完成
    print_status = models.IntegerField(verbose_name='打印状态', default=1, )

    # 将表名改为中文
    class Meta:
        verbose_name = '文件打印表'
        verbose_name_plural = verbose_name
        ordering = ('-create_time',)

    def __str__(self):
        return self.name


# 照片打印表
class PhotoPrint(models.Model):
    id = models.AutoField(primary_key=True)  # 自增id
    photo_url = models.FileField(upload_to='photoPrint/%Y_%m_%d/', verbose_name='存储路径', blank=True,
                                 null=True)  # 存储路径  默认不允许为空，

    photo_size = models.IntegerField(verbose_name='照片尺寸', default=1, )  # 1寸 2寸 6寸
    print_number = models.IntegerField(verbose_name='打印份数', default=1, )  # 打印份数
    price = models.CharField(max_length=100, verbose_name='总价格', )  # 总价格

    #
    name = models.CharField(max_length=20, verbose_name='客户姓名', )  # 客户姓名
    phone_or_qq = models.CharField(max_length=12, verbose_name='联系方式', blank=True, null=True)  # 联系方式
    what_time = models.CharField(max_length=30, verbose_name='什么时间要？', )  # 什么时间要？
    what_place = models.CharField(max_length=30, verbose_name='配送到哪里？', )  # 配送到哪里？
    print_point = models.CharField(max_length=100, verbose_name='打印点（打印码）', blank=True, null=True)  # 打印点（打印码）
    remark = models.TextField(verbose_name='备注', )  # 备注
    create_time = models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间', )  # 订单创建时间
    # 1为已提交 2为管理员已接收 3为待配送 4为已完成
    print_status = models.IntegerField(verbose_name='打印状态', default=1, )

    class Meta:
        verbose_name = '照片打印表'
        verbose_name_plural = verbose_name
        ordering = ('-create_time',)

    def __str__(self):
        return self.name
