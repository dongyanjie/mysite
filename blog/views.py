from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, InvalidPage, PageNotAnInteger
from django.db.models import Count

from django.contrib.auth.decorators import login_required  # 装饰器 判断是否登录
from django.views.decorators.csrf import csrf_exempt   # 装饰器  解决csrf问题
from django.views.decorators.http import require_POST  # 装饰器 只接受post提交
from itadmin.models import Article, ArticleComment  # 文章模型,文章评论模型
import redis
from django.conf import settings   # 引入settiongs中的变量
r = redis.StrictRedis(host=settings.REDIS_HOST, port=settings.REDIS_PORT, db=settings.REDIS_DB)


# 首页
def get_index_page(request):
    all_article = Article.objects.all()
    # 显示最热文章(5条)
    hot_article_list = Article.objects.order_by('-click')[:5]
    # 显示最新文章(5条)
    recently_article_list = Article.objects.order_by('-publish_date')[:5]
    # 显示评论最多的文章(5条)
    # Count()给每篇文章的评论计数, annotate()是给查询到的文章以Count('article_comment')进行标注
    most_comment_article_list = Article.objects.annotate(total_comments=Count('article_comment')).order_by('-total_comments')[:5]

    # 分页
    paginator = Paginator(all_article, 2)  # 每页显示3条
    page_num = paginator.num_pages  # 分页的数量
    try:
        page = int(request.GET.get('page', 1))  # 获取用户输入的页码,默认为 1
        page_article_list = paginator.page(page)  # 当前页数内的文章
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        page_article_list = paginator.page(1)

    # 渲染
    return render(request, 'blog/index.html',
                  {'page_article_list': page_article_list,
                   'page_num': range(1, page_num+1),
                   'recently_article_list': recently_article_list,
                   'hot_article_list': hot_article_list,
                   'most_comment_article_list': most_comment_article_list,
                   })

# 文章详情页
@csrf_exempt
def get_detail_page(request, article_id):
    if request.method == 'POST':
        article_id = request.POST['article_id']
        content = request.POST['content']
        if not content:
            return HttpResponse('null')
        try:
            article = Article.objects.get(article_id=article_id)
            ArticleComment.objects.create(article=article, commentator=request.user.username, content=content)
            return HttpResponse('1')
        except:
            return HttpResponse('0')

    else:
        all_article = Article.objects.all()  # 所有文章
        # redis 计算总浏览量
        total_click = r.incr("article:{}:views".format(article_id))  # 对访问文章的次数进行记录 incr使键值递增
        # 显示最热文章
        hot_article_list = Article.objects.order_by('-click')[:5]
        # 显示最新文章
        recently_article_list = Article.objects.order_by('-publish_date')[:5]
        # 显示评论最多的文章(5条)
        # Count()给每篇文章的评论计数, annotate()是给查询到的文章以Count('article_comment')进行标注
        most_comment_article_list = Article.objects.annotate(total_comments=Count('article_comment')).order_by('-total_comments')[:5]

        curr_article = None  # 指定文章
        previous_index = 0  # 文章索引
        next_index = 0
        previous_article = None  # 文章
        next_article = None
        for index, article in enumerate(all_article):
            # 判断文章两端
            if index == 0:
                previous_index = 0
                next_index = index + 1
            elif index == len(all_article) - 1:
                previous_index = index - 1
                next_index = index
            else:
                previous_index = index - 1
                next_index = index + 1
            if article.article_id == article_id:
                # 最新浏览量存入数据库
                article.click = total_click
                article.save()
                curr_article = article
                previous_article = all_article[previous_index]
                next_article = all_article[next_index]
                break
            # 文章内容以\n换行
            # section_list = curr_article.content.split('\n')

        return render(request, 'blog/detail.html',
                  {'curr_article': curr_article,
                   'previous_article': previous_article,
                   'next_article': next_article,
                   # 'section_list': section_list,
                   'total_click': total_click,
                   'recently_article_list': recently_article_list,
                   'hot_article_list': hot_article_list,
                   'most_comment_article_list': most_comment_article_list,

                   }
                  )


#文章点赞
@login_required(login_url='/account/login')
@require_POST
@csrf_exempt
def article_dianzan(request):
    article_id = request.POST.get('id')
    action = request.POST.get('action')
    if article_id and action:
        try:
            article = Article.objects.get(article_id=article_id)
            if action == 'like':
                article.dianzan.add(request.user)
                return HttpResponse('1')
        except:
            return HttpResponse('0')

