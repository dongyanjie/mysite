from django import forms
from django.forms import widgets
from .models import FilePrint, PhotoPrint


# 文件打印表单
class FilePrintForm(forms.Form):
    # 单双面，黑白彩印 ，打印份数，,总页数，价格
    file_url = forms.CharField(label='文件上传', widget=forms.FileInput(
        attrs={'lay-verify': 'required', 'autocomplete': 'off',
               'class': 'layui-upload-drag'}))
    page_count = forms.IntegerField(label='总页数', min_value=1, required=False, widget=forms.NumberInput(
        attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '请您手动输入总页数:',
               'class': 'layui-input'}))

    sided = forms.CharField(label='单双面', initial=1, widget=widgets.Select(choices=((1, '单面'), (2, '双面')),
                                                                          attrs={'lay-verify': 'required',
                                                                                 'autocomplete': 'off',
                                                                                 'placeholder': '单双面',
                                                                                 'class': 'sided'}
                                                                          ))
    color = forms.CharField(label='黑白彩印', initial=1, widget=widgets.Select(choices=((1, '黑白打印'), (2, '彩色打印')),
                                                                           attrs={'lay-verify': 'required',
                                                                                  'autocomplete': 'off',
                                                                                  'placeholder': '打印类型',
                                                                                  'class': 'layui-input'}
                                                                           ))
    print_number = forms.IntegerField(label='打印份数', min_value=1, initial=1,
                                      widget=forms.NumberInput(
                                          attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '打印份数',
                                                 'class': 'layui-input'}
                                      ))
    price = forms.CharField(label='价格', widget=forms.TextInput(
        attrs={'readonly': 'readonly', 'autocomplete': 'off', 'placeholder': '价格(不可选)',
               'class': 'layui-input'}
    ))

    name = forms.CharField(label='您的姓名',
                           widget=forms.TextInput(
                               attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '您的姓名',
                                      'class': 'layui-input'}))
    phone_or_qq = forms.CharField(label='联系方式',
                                  widget=forms.TextInput(
                                      attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '联系方式',
                                             'class': 'layui-input'}))
    what_time = forms.CharField(label='什么时间要? ', required=False,
                                widget=forms.TextInput(
                                    attrs={'autocomplete': 'off', 'placeholder': '什么时间要?',
                                           'class': 'layui-input'}
                                ))
    what_place = forms.CharField(label='配送地点(或自取)', required=False,
                                 widget=forms.TextInput(
                                     attrs={'autocomplete': 'off', 'placeholder': '配送地点(或自取)',
                                            'class': 'layui-input'}))
    print_point = forms.CharField(label='打印点(打印码)',
                                  widget=forms.TextInput(
                                      attrs={'lay-verify': 'required', 'autocomplete': 'off',
                                             'placeholder': '打印码(仅限济宁高新区大学园内)',
                                             'class': 'layui-input'}))
    remark = forms.CharField(label='备注', required=False,
                             widget=forms.Textarea(
                                 attrs={'autocomplete': 'off',
                                        'placeholder': '如有特殊要求请备注好 ...',
                                        'class': 'layui-textarea'}))


# 照片打印表单
class PhotoPrintForm(forms.Form):
    # 打印尺寸，打印份数 ，价格
    photo_url = forms.CharField(label='图片上传', widget=forms.FileInput(
        attrs={'lay-verify': 'required', 'autocomplete': 'off',
               'class': 'layui-upload-drag'}))

    photo_size = forms.CharField(label='打印尺寸', initial=1,
                                 widget=widgets.Select(choices=((1, '一寸'), (2, '二寸')),
                                                       attrs={'lay-verify': 'required', 'autocomplete': 'off',
                                                              'placeholder': '打印尺寸',
                                                              'class': 'layui-input'}))
    print_number = forms.IntegerField(label='打印份数', min_value=1, initial=1,
                                      widget=forms.NumberInput(
                                          attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '打印份数',
                                                 'class': 'layui-input'}))
    price = forms.CharField(label='价格', initial=8, widget=forms.TextInput(
        attrs={'readonly': 'readonly', 'autocomplete': 'off', 'placeholder': '价格(不可选)',
               'class': 'layui-input'}))

    name = forms.CharField(label='您的姓名',
                           widget=forms.TextInput(
                               attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '您的姓名',
                                      'class': 'layui-input'}))
    phone_or_qq = forms.CharField(label='联系方式',
                                  widget=forms.TextInput(
                                      attrs={'lay-verify': 'required', 'autocomplete': 'off', 'placeholder': '联系方式',
                                             'class': 'layui-input'}))
    what_time = forms.CharField(label='什么时间要? ', required=False,
                                widget=forms.TextInput(
                                    attrs={'autocomplete': 'off', 'placeholder': '什么时间要?',
                                           'class': 'layui-input'}
                                ))
    what_place = forms.CharField(label='配送地点(或自取)', required=False,
                                 widget=forms.TextInput(
                                     attrs={'autocomplete': 'off', 'placeholder': '配送地点(或自取)',
                                            'class': 'layui-input'}))
    print_point = forms.CharField(label='打印点(打印码)',
                                  widget=forms.TextInput(
                                      attrs={'lay-verify': 'required', 'autocomplete': 'off',
                                             'placeholder': '打印码(仅限济宁高新区大学园内)',
                                             'class': 'layui-input'}))
    remark = forms.CharField(label='备注', required=False,
                             widget=forms.Textarea(
                                 attrs={'autocomplete': 'off',
                                        'placeholder': '如有特殊要求请备注好 ...',
                                        'class': 'layui-textarea'}))

    # class Meta:
    #     model = PhotoPrint
    #     fields = (
    #         "name", "phone_or_qq", "what_time", "what_place", "print_point", "remark", "print_status",
    #     )
