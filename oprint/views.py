from django.shortcuts import render, HttpResponseRedirect
from django.http import HttpResponse, JsonResponse
from .models import FilePrint, PhotoPrint
from .forms import FilePrintForm, PhotoPrintForm


# 文件上传
def upload_file(request):
    if request.method == 'POST':
        # form = PhotoPrintForm(request.POST, request.FILES)
        # if form.is_valid():
        # do something处理业务

        # 获取表单元素
        file_url = request.FILES.get('file_url', None)
        if file_url is None:
            return JsonResponse({'status': '0', 'error': '亲，您还没有上传文件呢！'})

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
        if photo_url is None:
            return JsonResponse({'status': '0', 'error': '亲，您还没有上传照片呢！'})

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
