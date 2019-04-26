# Generated by Django 2.1.7 on 2019-04-22 06:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0009_auto_20190419_0950'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='address',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='customer',
            name='email',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='customer',
            name='first_name',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='customer',
            name='last_name',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='customer',
            name='user',
            field=models.CharField(max_length=255, unique=True),
        ),
        migrations.AlterField(
            model_name='history',
            name='date',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='history',
            name='items',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='history',
            name='ref_id',
            field=models.CharField(max_length=255, unique=True),
        ),
        migrations.AlterField(
            model_name='history',
            name='user',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='r_menu',
            name='item',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='seller',
            name='address',
            field=models.CharField(max_length=255),
        ),
        migrations.AlterField(
            model_name='seller',
            name='shop_name',
            field=models.CharField(max_length=255),
        ),
    ]
