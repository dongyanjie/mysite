# Generated by Django 2.1 on 2019-11-02 17:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('oprint', '0009_auto_20191103_0112'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fileprint',
            name='page_count',
            field=models.CharField(max_length=100, verbose_name='总页数'),
        ),
    ]
