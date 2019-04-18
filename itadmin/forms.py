from django import forms
from .models import ArticleColumn, Article

#文章栏目表单
class ArticleColumnForm(forms.ModelForm):
    class Meta:
        model = ArticleColumn
        fields = ("column",)

#文章表单
class ArticleForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = ('title', 'brief_content', 'content')

