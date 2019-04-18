from django import forms
from itadmin.models import ArticleComment


#文章评论表单
class ArticleCommentForm(forms.ModelForm):
    class Meta:
        model = ArticleComment
        fields = ('commentator', 'content')