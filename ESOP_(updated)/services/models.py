from django.db import models
from django.contrib.auth.models import User
from phonenumber_field.modelfields import PhoneNumberField

class UserProfile(models.Model):
    user = models.OneToOneField(User, related_name="profile", on_delete=models.CASCADE)
    role = models.IntegerField(default=0)
# Customer = 1 and Seller = 2

class Customer(models.Model):
    username = models.ForeignKey(User, on_delete=models.CASCADE)
    user = models.TextField(max_length = 255, unique = True, null = False)
    first_name = models.TextField(max_length=255)
    last_name = models.TextField(max_length=255)
    email = models.TextField(max_length=255)
    address = models.TextField(max_length=255)
    phone = PhoneNumberField(null=False, blank=False, unique=True)

class Seller(models.Model):
    username = models.ForeignKey(User,on_delete=models.CASCADE)
    shop_name = models.TextField(max_length=255)
    address = models.TextField(max_length=255)
    phone = PhoneNumberField(null=False, blank=False, unique=True)

class R_Menu(models.Model):
    username = models.ForeignKey(Seller,on_delete=models.CASCADE, related_name='u_name')
    shop_name = models.ForeignKey(Seller,on_delete=models.CASCADE,related_name='s_name')
    item = models.TextField(max_length=255)
    price = models.DecimalField(max_digits=5, decimal_places=2)

class History(models.Model):
    username = models.ForeignKey(User,on_delete = models.CASCADE)
    ref_id = models.TextField(max_length = 255,unique = True)
    amount = models.DecimalField(max_digits = 10,decimal_places = 3)
    date = models.TextField(max_length=255)
    items = models.TextField(max_length=255)
    user = models.TextField(max_length=255, null = False)




