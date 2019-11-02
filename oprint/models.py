from django.db import models


# 照片打印表
class PhotoPrint(models.Model):
    id = models.AutoField(primary_key=True)  # 自增id
    photo_url = models.CharField(max_length=100, verbose_name='存储路径', blank=True, null=True)  # 存储路径  默认不允许为空，
    photo_name = models.CharField(max_length=30, verbose_name='照片名称', )  # 照片名
    photo_type = models.CharField(max_length=10, verbose_name='照片类型', )  # 照片类型
    photo_size = models.IntegerField(verbose_name='照片尺寸', default=1, blank=True, null=True)  # 1寸 2寸 6寸
    print_number = models.IntegerField(default=1, blank=True, null=True)  # 打印份数
    price = models.FloatField(max_length=100, verbose_name='总价格', )  # 总价格

    name = models.CharField(max_length=20, verbose_name='客户姓名', )  # 客户姓名
    phone_or_qq = models.CharField(max_length=12, verbose_name='联系方式', blank=True, null=True)  # 联系方式
    what_time = models.CharField(max_length=30, verbose_name='什么时间要？', )  # 什么时间要？
    what_place = models.CharField(max_length=30, verbose_name='配送到哪里？', )  # 配送到哪里？
    print_point = models.CharField(max_length=100, verbose_name='打印点（打印码）', blank=True, null=True)  # 打印点（打印码）
    remark = models.TextField(verbose_name='备注', )  # 备注
    create_time = models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间', )  # 订单创建时间
    # 1为已提交 2为管理员已接收 3为待配送 4为打印完毕
    print_status = models.IntegerField(verbose_name='打印状态', default=1, )

    class Meta:
        verbose_name = '照片打印表'
        verbose_name_plural = verbose_name
        ordering = ('-create_time',)

    def __str__(self):
        return self.name


# 文件打印表
class FilePrint(models.Model):
    id = models.AutoField(primary_key=True)  # 自增id
    file_url = models.CharField(max_length=100, verbose_name='存储路径', blank=True, null=True)  # 存储路径
    file_name = models.CharField(max_length=30, verbose_name='文件名称', )  # 文件名
    file_type = models.CharField(max_length=10, verbose_name='文件类型', )  # 文件类型
    print_number = models.IntegerField(verbose_name='打印份数', default=1, blank=True, null=True)  # 打印份数
    sided = models.IntegerField(verbose_name='打印单双面', default=1, blank=True, null=True)  # 1为单面 2为双面
    color = models.IntegerField(verbose_name='打印彩色黑白', default=1, blank=True, null=True)  # 1为黑白 2为彩印
    page_count = models.IntegerField(verbose_name='总页数', )  # 总页数
    price = models.FloatField(max_length=100, verbose_name='总价格', )  # 总价格

    name = models.CharField(max_length=20, verbose_name='客户姓名', )  # 客户姓名
    phone_or_qq = models.CharField(max_length=12, verbose_name='联系方式', blank=True, null=True)  # 联系方式
    what_time = models.CharField(max_length=30, verbose_name='什么时间要？', )  # 什么时间要？
    what_place = models.CharField(max_length=30, verbose_name='配送到哪里？', )  # 配送到哪里？
    print_point = models.CharField(max_length=100, verbose_name='打印点（打印码）', blank=True, null=True)  # 打印点（打印码）
    remark = models.TextField(verbose_name='备注', )  # 备注
    create_time = models.DateTimeField(auto_now_add=True, verbose_name='订单创建时间', )  # 订单创建时间
    # 1为已提交 2为管理员已接收 3为待配送 4为打印完毕
    print_status = models.IntegerField(verbose_name='打印状态', default=1, )

    class Meta:
        verbose_name = '文件打印表'
        verbose_name_plural = verbose_name
        ordering = ('-create_time',)

    def __str__(self):
        return self.name
