from django import forms
from .models import ArticleColumn

#文章栏目表单
class ArticleColumnForm(forms.ModelForm):
    class Meta:
        model = ArticleColumn
        fields = ("column",)