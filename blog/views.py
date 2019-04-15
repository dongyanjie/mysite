from django.shortcuts import render,get_object_or_404
from django.http import HttpResponse
from .models import Article
from django.core.paginator import Paginator, EmptyPage, InvalidPage, PageNotAnInteger
from django.contrib.auth import authenticate, login
# authenticate()检验是否为本网站项目的用户，返回User的一个实例对象，配合login()使用
# Create your views here.

#首页
def get_index_page(request):
    all_article=Article.objects.all()
    # 按时间倒序取前5篇
    top5_article_list = Article.objects.order_by('-publish_date')[:5]
    # 分页
    paginator = Paginator(all_article, 3) #每页显示3条
    page_num = paginator.num_pages #分页的数量
    try:
        page = int(request.GET.get('page', 1)) #获取用户输入的页码,默认为 1
        page_article_list = paginator.page(page) #当前页数内的文章
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        page_article_list = paginator.page(1)
    # 判断上一页下一页
    if page_article_list.has_previous():
        previous_page = page-1
    else:
        previous_page = page
    if page_article_list.has_next():
        next_page = page+1
    else:
        next_page = page
    # 渲染
    return render(request, 'blog/index.html',
                  {'page_article_list': page_article_list,
                   'page_num': range(1, page_num+1),
                   'previous_page': previous_page,
                   'next_page': next_page,
                   'top5_article_list': top5_article_list,
                   })

# 文章详情页
def get_detail_page(request, article_id):
    all_article = Article.objects.all()
    curr_article = None #指定文章
    previous_index = 0 #文章索引
    next_index = 0
    previous_article = None  # 文章
    next_article = None
    # 按时间倒序取前5篇
    top5_article_list = Article.objects.order_by('-publish_date')[:5]
    for index, article in enumerate(all_article):
        # 判断文章两端
        if index == 0:
            previous_index = 0
            next_index = index+1
        elif index == len(all_article)-1:
            previous_index = index-1
            next_index = index
        else:
            previous_index = index - 1
            next_index = index + 1
        if article.article_id == article_id:
            curr_article = article
            previous_article = all_article[previous_index]
            next_article = all_article[next_index]
            break
        #文章内容以\n换行
        # section_list = curr_article.content.split('\n')
    return render(request, 'blog/detail.html',
                  {'curr_article': curr_article,
                   'previous_article': previous_article,
                   'next_article': next_article,
                   # 'section_list': section_list,
                   'top5_article_list': top5_article_list
                    }
                  )





