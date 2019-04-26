# Generated by Django 2.1.5 on 2019-04-06 10:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0002_userprofile'),
    ]

    operations = [
        migrations.CreateModel(
            name='R_Menu',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('item', models.CharField(max_length=100)),
                ('price', models.DecimalField(decimal_places=2, max_digits=5)),
                ('shop_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='s_name', to='services.Seller')),
                ('username', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='u_name', to='services.Seller')),
            ],
        ),
    ]
