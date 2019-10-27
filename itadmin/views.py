from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required  #装饰器 判断是否登录
from django.views.decorators.csrf import csrf_exempt   #装饰器  解决csrf问题
from django.views.decorators.http import require_POST  #装饰器 只接受post提交
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

import json
from .models import ArticleColumn, ArticleTag, Article
from .forms import ArticleColumnForm, ArticleTagForm, ArticleForm

# 新增文章栏目
@login_required(login_url='/userManage/login')
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

# 修改文章栏目
@login_required(login_url='/userManage/login')
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

# 删除文章栏目
@login_required(login_url='/userManage/login')
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


# 新增文章标签
@login_required(login_url='/userManage/login')
@csrf_exempt  # 解决提交表单时遇到的csrf问题
def article_tag(request):
    if request.method == 'POST':
        tag_name = request.POST['tag']
        if not tag_name:
            return HttpResponse('null')
        tags = ArticleTag.objects.filter(user_id=request.user.id, tag=tag_name)  # 当前用户是否已有该标签
        if tags:
            return HttpResponse('0')
        else:
            ArticleTag.objects.create(user=request.user, tag=tag_name)
            return HttpResponse('1')
    if request.method == 'GET':
        tags = ArticleTag.objects.filter(user=request.user)  # 当前登录用户所属的所有标签
        tag_form = ArticleTagForm()
        return render(request, 'itadmin/article_tag.html', {'tags': tags,
                                                            'tag_form': tag_form,
                                                            })

# 删除文章标签
@login_required(login_url='/userManage/login')
@require_POST
@csrf_exempt
def del_article_tag(request):
    tag_id = request.POST['tag_id']
    try:
        line = ArticleTag.objects.get(id=tag_id)
        line.delete()
        return HttpResponse('1')
    except:
        return HttpResponse('0')

# 文章详情页
@login_required(login_url='/userManage/login')
def article_detail(request, article_id):
    article = get_object_or_404(Article, article_id=article_id)
    return render(request, 'itadmin/article_detail.html', {'article': article})

# 新增文章
@login_required(login_url='/userManage/login')
@csrf_exempt   #解决提交表单时遇到的csrf问题
def article(request):
    if request.method == 'POST':
        article_form = ArticleForm(data=request.POST)
        title = request.POST['title']
        content = request.POST['content']
        tags = request.POST['tags']
        if not title or not content:
            return HttpResponse('null')
        if article_form.is_valid():
            cd = article_form.cleaned_data
            try:
                new_article = article_form.save(commit=False)
                new_article.author = request.user
                new_article.column = request.user.article_column.get(id=request.POST['column_id'])
                new_article.save()
        # json.loads()将json格式数据转换为列表
                if tags:
                    for atag in json.loads(tags):
                        tag = request.user.article_tag.get(tag=atag)
                        new_article.tag.add(tag)
                return HttpResponse('1')
            except:
                return HttpResponse('0')
    if request.method == 'GET':
        article_form = ArticleForm()
        article_columns = request.user.article_column.all()
        articles_all = Article.objects.filter(author=request.user).order_by('-publish_date')  # 当前登录用户所属的所有栏目
        article_tags =request.user.article_tag.all()

        # 分页功能
        paginator = Paginator(articles_all, 3)  #创建分页的实例对象
        page = request.GET.get('page') #用户输入的页数
        try:
            current_page = paginator.page(page) #指定页面内容
            articles = current_page.object_list #得到该页所有对象列表
        except (PageNotAnInteger, EmptyPage):   #判断是否是证书 或是否为空
            current_page = paginator.page(1)
            articles = current_page.object_list
        return render(request, 'itadmin/article.html', {'article_form': article_form,
                                                        'article_columns': article_columns,
                                                        'articles': articles,
                                                        'article_tags': article_tags,
                                                        'page': current_page,
                                                               })

# 编辑文章
@login_required(login_url='/userManage/login')
@csrf_exempt
def edit_article(request):

    if request.method == 'POST':
        article_id = request.POST['article_id']
        edit_article =Article.objects.get(article_id=article_id)
        try:
            edit_article.column = request.user.article_column.get(id=request.POST['column_id'])
            edit_article.title = request.POST['title']
            edit_article.brief_content = request.POST['brief_content']
            edit_article.content = request.POST['content']
            edit_article.save()
            return HttpResponse('1')
        except:
            return HttpResponse('0')

# 删除文章
@login_required(login_url='/userManage/login')
@require_POST
@csrf_exempt
def del_article(request):
    article_id = request.POST['article_id']
    try:
        line = Article.objects.get(article_id=article_id)
        line.delete()
        return HttpResponse('1')
    except:
        return HttpResponse('0')
