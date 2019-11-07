from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from .models import FilePrint, PhotoPrint
from .forms import FilePrintForm, PhotoPrintForm
import json
from django.views.decorators.csrf import csrf_exempt  # 装饰器  解决csrf问题


# 文件上传
def upload_file(request):
    if request.method == 'POST':
        # form = PhotoPrintForm(request.POST, request.FILES)
        # if form.is_valid():
        # do something处理业务

        # 获取表单元素
        file_url = request.FILES.get('file_url', None)
        # 获取文件大小 //返回Byte(B)
        if file_url.size >= (8 * 1024 * 1024):
            return JsonResponse({'status': '9', 'message': '请重新上传小于8M的文件! 如文件过大,请发给QQ 735238082'})

        sided = request.POST.get('sided')
        color = request.POST.get('color')
        page_count = request.POST.get('page_count')
        print_number = request.POST.get('print_number')
        price = request.POST.get('price')

        name = request.POST.get('name')
        phone_or_qq = request.POST.get('phone_or_qq')
        what_time = request.POST.get('what_time')
        what_place = request.POST.get('what_place')
        print_point = request.POST.get('print_point')
        remark = request.POST.get('remark')

        try:
            # 写入数据库
            fp = FilePrint(
                file_url=file_url,
                sided=sided,
                color=color,
                page_count=page_count,
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
            return JsonResponse({'status': '1'})
        except:
            return JsonResponse({'status': '0'})

    else:
        form = FilePrintForm()
    return render(request, 'oprint/upload_file.html', {'form': form, })


# 图片上传
def upload_photo(request):
    if request.method == 'POST':
        # form = PhotoPrintForm(request.POST, request.FILES)
        # if form.is_valid():
        # do something处理业务

        # 获取表单元素
        photo_url = request.FILES.get('photo_url', None)
        # 获取图片大小 //返回Byte(B)
        if photo_url.size >= (2 * 1024 * 1024):
            return JsonResponse({'status': '9', 'message': '请重新上传小于2M的图片! 如文件过大,请发给QQ 735238082'})

        photo_size = request.POST.get('photo_size')
        print_number = request.POST.get('print_number')
        price = request.POST.get('price')

        name = request.POST.get('name')
        phone_or_qq = request.POST.get('phone_or_qq')
        what_time = request.POST.get('what_time')
        what_place = request.POST.get('what_place')
        print_point = request.POST.get('print_point')
        remark = request.POST.get('remark')

        try:
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
            return JsonResponse({'status': '1'})
        except:
            return JsonResponse({'status': '0'})

    else:
        form = PhotoPrintForm()
    return render(request, 'oprint/upload_photo.html', {'form': form, })


# 查询订单
# @csrf_exempt
def order_search(request):
    from django.core import serializers

    if request.method == 'GET':
        # 搜索功能实现
        get_ajax_name = request.GET.get('search_name', None)

        # 和前端约定的返回格式
        result = {"status": '0', "message": '您要查询的姓名下目前没有订单!', "file_data": [], "photo_data": []}

        # 查询结果为QuerySet
        photo_list = PhotoPrint.objects.filter(name=get_ajax_name)
        file_list = FilePrint.objects.filter(name=get_ajax_name)

        # 转为json格式
        result['photo_data'] = serializers.serialize("json", photo_list)
        result['file_data'] = serializers.serialize("json", file_list)

        # print(result['file_data'])
        # exit()

        # 返回数据
        if photo_list is None and file_list is None:
            return JsonResponse(result)
        elif photo_list is None:
            result['status'] = 1
            return JsonResponse(result)
        elif file_list is None:
            result['status'] = 1
            return JsonResponse(result)
        else:
            result['status'] = 1
            return JsonResponse(result)
