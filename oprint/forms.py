from django import forms
from django.forms import widgets
from .models import FilePrint, PhotoPrint


# 文件打印表单
class FilePrintForm(forms.Form):
    # 单双面，黑白彩印 ，打印份数，,总页数，价格
    file_url = forms.CharField(label='存储路径', widget=forms.FileInput())
    page_count = forms.CharField(label='总页数', required=False, widget=forms.TextInput(attrs={'disabled': 'false'}))
    sided = forms.CharField(label='单双面', initial=1, widget=widgets.Select(choices=((1, '单面'), (2, '双面'),)))
    color = forms.CharField(label='黑白彩印', initial=1, widget=widgets.Select(choices=((1, '黑白'), (2, '彩印'),)))
    print_number = forms.IntegerField(label='打印份数', min_value=1, initial=1,
                                      widget=forms.NumberInput())
    price = forms.CharField(label='价格', required=False, widget=forms.TextInput(attrs={'disabled': 'false'}))
    #
    name = forms.CharField(label='客户姓名',
                           widget=forms.TextInput())
    phone_or_qq = forms.IntegerField(label='联系方式',
                                     widget=forms.TextInput())
    what_time = forms.CharField(label='什么时间要? ', required=False,
                                widget=forms.TextInput())
    what_place = forms.CharField(label='配送地点(或自取)', required=False,
                                 widget=forms.TextInput())
    print_point = forms.CharField(label='打印点(打印码)',
                                  widget=forms.TextInput())
    remark = forms.CharField(label='备注', required=False,
                             widget=forms.Textarea())


# 照片打印表单
class PhotoPrintForm(forms.Form):
    # 打印尺寸，打印份数 ，价格
    photo_size = forms.CharField(label='打印尺寸', initial=1,
                                 widget=widgets.Select(choices=((1, '一寸'), (2, '二寸'), (6, '六寸'))))
    print_number = forms.IntegerField(label='打印份数', min_value=1, initial=1,
                                      widget=forms.NumberInput())
    price = forms.CharField(label='价格', required=False, widget=forms.TextInput(attrs={'disabled': 'false'}))
    photo_url = forms.CharField(label='存储路径', widget=forms.FileInput(attrs={'multiple': ''}))
    # username = forms.CharField(label='userName',
    #                            widget=forms.TextInput(
    #                                attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '请输入用户名',
    #                                       'class': 'layui-input'}))
    name = forms.CharField(label='您的姓名',
                           widget=forms.TextInput())
    phone_or_qq = forms.IntegerField(label='联系方式',
                                     widget=forms.TextInput())
    what_time = forms.CharField(label='什么时间要? ', required=False,
                                widget=forms.TextInput())
    what_place = forms.CharField(label='配送地点(或自取)', required=False,
                                 widget=forms.TextInput())
    print_point = forms.CharField(label='打印点(打印码)',
                                  widget=forms.TextInput())
    remark = forms.CharField(label='备注', required=False,
                             widget=forms.Textarea())

    # class Meta:
    #     model = PhotoPrint
    #     fields = (
    #         "name", "phone_or_qq", "what_time", "what_place", "print_point", "remark", "print_status",
    #     )
