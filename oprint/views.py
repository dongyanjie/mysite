from django.shortcuts import render

from django.http import HttpResponse
from .forms import UploadFileForm


# 处理文件上传常用方法
# def handle_uploaded_file(f):
#     with open('some/file/name.txt', 'wb+') as destination:
#         for chunk in f.chunks():
#             destination.write(chunk)


# 文件上传
def upload_file(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            # handle_uploaded_file(request.FILES['file'])
            return HttpResponse('SUCCESS ...')
    else:
        form = UploadFileForm()
        return render(request, 'oprint/upload_file.html', {'form': form})


# 照片上传
def upload_photo(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            # handle_uploaded_file(request.FILES['file'])
            return HttpResponse('SUCCESS ...')
    else:
        form = UploadFileForm()
        return render(request, 'oprint/upload_photo.html', {'form': form})
