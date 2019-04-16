from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required  #装饰器 判断是否登录
from django.views.decorators.csrf import csrf_exempt   #装饰器  解决csrf问题
from django.views.decorators.http import require_POST  #装饰器 只接受post提交

from .models import ArticleColumn
from .forms import ArticleColumnForm

#新增文章栏目
@login_required(login_url='/account/login')
@csrf_exempt   #解决提交表单时遇到的csrf问题
def article_column(request):
    if request.method == 'POST':
        column_name = request.POST['column']
        if not column_name:
            return HttpResponse('null')
        columns = ArticleColumn.objects.filter(user_id=request.user.id, column=column_name) #当前用户是否已有该栏目
        if columns:
            return HttpResponse('0')
        else:
            ArticleColumn.objects.create(user=request.user, column=column_name)
            return HttpResponse('1')
    if request.method == 'GET':
        columns = ArticleColumn.objects.filter(user=request.user)  # 当前登录用户所属的所有栏目
        column_form = ArticleColumnForm()
        return render(request, 'itadmin/article_column.html', {'columns': columns,
                                                               'column_form': column_form,
                                                               })

#编辑文章栏目
@login_required(login_url='/account/login')
@require_POST
@csrf_exempt
def edit_article_column(request):
    column_name = request.POST['column_name']
    column_id = request.POST['column_id']
    if not column_name:
        return HttpResponse('null')
    try:
        line = ArticleColumn.objects.get(id=column_id)
        line.column = column_name
        line.save()
        return HttpResponse('1')
    except:
        return HttpResponse('0')

#删除文章栏目
@login_required(login_url='/account/login')
@require_POST
@csrf_exempt
def del_article_column(request):
    column_id = request.POST['column_id']
    try:
        line = ArticleColumn.objects.get(id=column_id)
        line.delete()
        return HttpResponse('1')
    except:
        return HttpResponse('0')
