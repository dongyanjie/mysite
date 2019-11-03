from django.shortcuts import render, HttpResponseRedirect
from django.http import HttpResponse
from .models import FilePrint, PhotoPrint
from .forms import FilePrintForm, PhotoPrintForm

import os


# 文件上传
def upload_file(request):
    if request.method == 'POST':
        form = FilePrintForm(request.POST, request.FILES)
        file_url = request.FILES.get('file_url', None)
        if not file_url:
            return HttpResponse("您没有上传文件!!!")

        # 测试 校验不通过 记得修改bug
        if form.is_valid():
            # do something处理业务

            # 获取表单元素
            sided = form.cleaned_data['sided']
            color = form.cleaned_data['color']
            print_number = form.cleaned_data['print_number']
            page_count = form.cleaned_data['page_count']
            price = form.cleaned_data['price']

            name = form.cleaned_data['name']
            phone_or_qq = form.cleaned_data['phone_or_qq']
            what_time = form.cleaned_data['what_time']
            what_place = form.cleaned_data['what_place']
            print_point = form.cleaned_data['print_point']
            remark = form.cleaned_data['remark']

            # 写入数据库
            fp = FilePrint(
                file_url=file_url,

                sided=sided,
                color=color,
                print_number=print_number,
                page_count=page_count,
                price=price,

                name=name,
                phone_or_qq=phone_or_qq,
                what_time=what_time,
                what_place=what_place,
                print_point=print_point,
                remark=remark,
            )
            # 提交到数据库
            fp.save()
            return HttpResponse('文件上传成功 ...')
    else:
        form = FilePrintForm()
    return render(request, 'oprint/upload_file.html', {'form': form, })


# 照片上传
def upload_photo(request):
    if request.method == 'POST':
        form = PhotoPrintForm(request.POST, request.FILES)
        if form.is_valid():
            # do something处理业务
            # 获取表单元素
            photo_url = request.FILES.get('photo_url')

            photo_size = form.cleaned_data['photo_size']
            print_number = form.cleaned_data['print_number']
            price = form.cleaned_data['price']

            name = form.cleaned_data['name']
            phone_or_qq = form.cleaned_data['phone_or_qq']
            what_time = form.cleaned_data['what_time']
            what_place = form.cleaned_data['what_place']
            print_point = form.cleaned_data['print_point']
            remark = form.cleaned_data['remark']

            # 写入数据库
            fp = PhotoPrint(
                photo_url=photo_url,
                photo_size=photo_size,
                print_number=print_number,
                price=price,

                name=name,
                phone_or_qq=phone_or_qq,
                what_time=what_time,
                what_place=what_place,
                print_point=print_point,
                remark=remark,
            )
            # 提交到数据库
            fp.save()
            return HttpResponse('图片上传成功 ...')
    else:
        form = PhotoPrintForm()
    return render(request, 'oprint/upload_photo.html', {'form': form, })
