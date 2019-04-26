import django
from django.test import TestCase
from django.urls import reverse
from services import views as user_views
import requests
from django.views.decorators.csrf import csrf_exempt
import json

# from django.test import LiveServerTestCase
# from selenium import webdriver
# from selenium.webdriver.common.keys import Keys


# class AccountTestCase(LiveServerTestCase):

#     def setUp(self):
#         self.selenium = webdriver.Firefox()
#         super(AccountTestCase, self).setUp()

#     def tearDown(self):
#         self.selenium.quit()
#         super(AccountTestCase, self).tearDown()

#     def test_register(self):
#         selenium = self.selenium
#         #Opening the link we want to test
#         selenium.get('http://127.0.0.1:8000/register/')
#         #find the form element
        
#         username = selenium.find_element_by_id('id_username')
#         email = selenium.find_element_by_id('id_email')
#         password1 = selenium.find_element_by_id('id_password')
#         password2 = selenium.find_element_by_id('id_password2')

#         submit = selenium.find_element_by_name('register')

#         #Fill the form with data
#         username.send_keys('abhi')
#         email.send_keys('yusuf@qawba.com')
#         password1.send_keys('123456')
#         password2.send_keys('123456')

#         #submitting the form
#         submit.send_keys(Keys.RETURN)

#         #check the returned result
# assert 'Check your email' in selenium.page_source

class test_urls(TestCase):
	def test_register(self):
		url = reverse('register')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)



	def test_login_user(self):
		url = reverse('login_user')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_index(self):
		url = reverse('index')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_barber(self):
		url = reverse('barber')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_erick(self):
		url = reverse('erick')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_meat(self):
		url = reverse('meat')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_profile(self):
		url = reverse('profile')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_update_profile(self):
		url = reverse('update_profile')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_payment(self):
		url = reverse('payment')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_logout_user(self):
		url = reverse('logout_user')
		response = self.client.get(url)

		self.assertEqual(response.status_code, 200)

	def test_laundary(self):
		url = reverse('laundary')
		response = self.client.get(url)
		# print(url)
		# print(response)
		self.assertEqual(response.status_code, 200)


	def test_validate_username(self):
		data = {
			'str':"xyz"
		}
		url = reverse('validate_username')
		# print(url)
		# response = self.client.get(url,data=data)
		response = requests.post('http://localhost:8000'+url, data=data) 
		# print(response)

		self.assertEqual(response.status_code, 200)

	def test_reg_username(self):
		data = {
			'str':"xyz"
		}
		url = reverse('reg_username')
		# response = self.client.get(url)
		response = requests.post('http://localhost:8000'+url, data=data) 
		self.assertEqual(response.status_code, 200)

	def test_reg_email(self):
		data = {
			'str':"xyz"
		}
		url = reverse('reg_email')
		# response = self.client.get(url)
		response = requests.post('http://localhost:8000'+url, data=data) 

		self.assertEqual(response.status_code, 200)

	def test_reg_password(self):
		data = {
			'str':"xyz,xyx"
		}
		url = reverse('reg_password')
		# response = self.client.get(url)
		response = requests.post('http://localhost:8000'+url, data=data) 
		self.assertEqual(response.status_code, 200)




class test_conditions(TestCase):
	
	
	@csrf_exempt
	def test_condition_username(self):
		username = []
		username.append(["aayush",1])
		username.append(["pruvi007",1])
		username.append(["manan",1])
		username.append(["Praveen",0])
		username.append(["abhinav",1])
		username.append(["abhi",0])
		username.append(["shubham",0])
		c = 0
		for name in username:
			payload = {'str': name[0]}
			r = requests.post('http://localhost:8000/ajax/', data=payload) 
			r = json.loads(r.text)
			if r['is_taken']==True:
				
				self.assertEqual(1,name[1])
				if name[1]==1:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

			else:
				
				self.assertEqual(0,name[1])
				if name[1]==0:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

	@csrf_exempt
	def test_condition_reg_username(self):
		username = []
		username.append(["aayush",0])
		username.append(["pruvi007",0])
		username.append(["manan",0])
		username.append(["Praveen",1])
		username.append(["abhinav",0])
		username.append(["abhi@#",0])
		username.append(["mon123",1])
		for name in username:
			payload = {'str': name[0]}
			r = requests.post('http://localhost:8000/ajax/validate/username/', data=payload) 
			r = json.loads(r.text)
			if r['is_taken']==False and r['alnum']==True:
				
				self.assertEqual(1,name[1])
				if name[1]==1:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

			else:
				
				self.assertEqual(0,name[1])
				if name[1]==0:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

	@csrf_exempt
	def test_condition_email(self):
		email = []
		email.append(["pruvi007@gmail.com",0])
		email.append(["pruvi007@gmailcom",0])
		email.append(["puvi@gmail.com",1])
		email.append(["iiitg@gmail.com",0])
		email.append(["123",0])
		email.append(["abcdgdajks",0])

		for name in email:
			payload = {'str': name[0]}
			r = requests.post('http://localhost:8000/ajax/validate/email/', data=payload) 
			r = json.loads(r.text)
			if r['email']==True and r['present']==False:
				
				self.assertEqual(1,name[1])
				if name[1]==1:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

			else:
				
				self.assertEqual(0,name[1])
				if name[1]==0:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

    # @csrf_exempt
	def test_condition_password(self):
		password = []
		password.append(["123,123",0])
		password.append(["1234567,1234567",0])
		password.append(["abcdefghqopd,abcdefghqopd",1])
		password.append(["paga.com@123,paga.com@123",1])
		password.append(["p,p",0])

		for name in password:
			payload = {'str': name[0]}
			r = requests.post('http://localhost:8000/ajax/validate/password/', data=payload) 
			r = json.loads(r.text)
			if r['password']==True:
				
				self.assertEqual(1,name[1])
				if name[1]==1:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")

			else:
				
				self.assertEqual(0,name[1])
				if name[1]==0:
					print(name[0],"Passed")
				else:
					print(name[0],"Failed")




			
			
		
		


	

