# Generated by Django 2.1.8 on 2019-04-27 19:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0001_initial'),
    ]

    operations = [
        migrations.AddIndex(
            model_name='customer',
            index=models.Index(fields=['user', 'cust_phone'], name='customer_cu_user_id_3304a2_idx'),
        ),
    ]
