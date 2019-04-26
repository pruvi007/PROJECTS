from django import forms
from django.contrib.auth.models import User
from .models import Customer,Seller,History


class UserForm(forms.ModelForm):
    #password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ['username', 'password','email']

class CustomerForm(forms.ModelForm):

	class Meta:
		model = Customer
		fields = ['username','first_name','last_name']

class SellerForm(forms.ModelForm):

	class Meta:
		model = Seller
		fields = ['username','shop_name']

class ProfileForm(forms.ModelForm):

	class Meta:
		model = Customer
		fields = ['first_name','last_name','email','phone','address']

class HistoryForm(forms.ModelForm):

	class Meta:
		model = History
		fields = ['date','ref_id','amount','items']
