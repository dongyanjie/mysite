from django import forms
from .models import ArticleColumn, ArticleTag, Article

#文章栏目表单
class ArticleColumnForm(forms.ModelForm):
    class Meta:
        model = ArticleColumn
        fields = ("column", "classify")

#文章标签表单
class ArticleTagForm(forms.ModelForm):
    class Meta:
        model = ArticleTag
        fields = ("tag",)

#文章表单
class ArticleForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = ('title', 'brief_content', 'content')

