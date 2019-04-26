"""ESOP URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from django.contrib import admin
from django.urls import path
from services import views as user_views
from django.conf.urls import include, url

urlpatterns = [
    url(r'^admin/', admin.site.urls),

    url(r'^$',user_views.login_user,name='login_user'),
    url(r'^register/',user_views.register,name='register'),
    
    url(r'^login/',user_views.login_user,name='login_user'),
    url(r'^index/',user_views.index,name='index'),
    

    url(r'^about/', user_views.barber, name='barber'),
    url(r'^services/',user_views.laundary,name='laundary'),
    url(r'^erick/',user_views.erick,name='erick'),
    url(r'^logout/', user_views.logout_user, name='logout_user'),
    url(r'^profile/',user_views.profile,name='profile'),
    url(r'^ajax/', user_views.validate_username, name='validate_username'),
    url(r'^ajax/validate/username/', user_views.reg_username, name='reg_username'),
    url(r'^ajax/validate/email/', user_views.reg_email, name='reg_email'),
    url(r'^ajax/validate/password/', user_views.reg_password, name='reg_password'),
    url(r'^ajax/validate/submit/', user_views.reg_submit, name='reg_submit'),
    url(r'^update_profile',user_views.update_profile,name = 'update_profile'),
    url(r'^meat_eat/',user_views.meat,name='meat'),
    url(r'^mbs/',user_views.mbs,name='mbs'),
    url(r'^payment/',user_views.payment,name = 'payment'),
    url(r'^mail_pay/',user_views.mail_pay,name ='mail_pay'),
    url(r'^get_items/',user_views.get_items,name ='get_items'),

]
