# Generated by Django 2.1.7 on 2019-04-30 12:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('party', '0005_auto_20190430_1214'),
    ]

    operations = [
        migrations.AlterField(
            model_name='paymentdetails',
            name='transaction_id',
            field=models.CharField(default='ADD2A9A3E883', max_length=14, null=True),
        ),
    ]
