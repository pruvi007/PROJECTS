from django.test import TestCase
from services.models import Customer
from services.models import Seller,UserProfile
from services.forms import UserForm
from django.contrib.auth.models import User
from django.db import models
from .forms import UserForm

# Create your tests here.
class CustomerTest(TestCase):
	def create_customer(self,first_name="Praveen"):
		form = UserForm()
		user = form.save(commit=False)
		return Customer.objects.create(username=user,first_name=first_name,last_name="Sinha",address="Room 534 Boys Hostel",phone="7903471770")

	def test_customer_creation(self):
		a = self.create_customer()
		self.assertTrue(isinstance(a,Customer))	#check whether the created model is actually an instance of Customer.
		self.assertEqual(a.__unicode__(),a.username) #check whether this function actually return the username

	def test_no_customer_creation(self):
		a = self.create_customer()
		self.assertFalse(isinstance(a,Customer))	#check whether the created model is not  actually an instance of Customer.

class SellerTest(TestCase):
	def create_seller(self,shop_name="ABCD"):
		return Seller.objects.create(username=username,shop_name=shop_name,address="XYZ colony, Guwahati",phone="7903471770")

	def test_seller_creation(self):
		a = self.create_seller()
		self.assertTrue(isinstance(a,Seller))	#check whether the created model is actually an instance of Seller.
		self.assertEqual(a.__unicode__(),a.username) #check whether this function actually return the username

	def test_no_seller_creation(self):
		a = self.create_seller()
		self.assertFalse(isinstance(a,Seller))	#check whether the created model is not actually an instance of Seller.

class userTest(TestCase):
	def create_user(self,role=1):
		return UserProfile.objects.create(role=role)

	def test_user_creation(self):
		a = self.create_user()
		self.assertTrue(isinstance(a,UserProfile))	#check whether the created model is actually an instance of UserProfile.
		self.assertEqual(a.__unicode__(),a.user) #check whether this function actually return the user

	def test_no_user_creation(self):
		a = self.create_user()
		self.assertFalse(isinstance(a,UserProfile))	#check whether the created model is not actually an instance of UserProfile.


class TestForms(TestCase):

	def test_no_login_form(self):
		form = UserForm(data={
			})

		self.assertFalse(form.is_valid())

	def test_login_form(self):
		form = UserForm(data={
			'username':'praveen',
			'password':123
			})

		self.assertTrue(form.is_valid())

	def test_register_form(self):
		form = UserForm(data={
			'username':'Pruvi007',
			'email':'pruvi@gmail.com',
			'password':1234
			})
		self.assertTrue(form.is_valid())

	def test_no_register_form(self):
		form = UserForm(data={
			
			})
		self.assertFalse(form.is_valid())

	


