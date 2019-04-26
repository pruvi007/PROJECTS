from django.conf.urls import url
from . import views
from django.contrib import admin
from django.urls import path
from services import views as user_views
app_name = 'services'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('register/', user_views.register, name='register'),

    path('login/', user_views.login_user, name='login_user'),
    path('index/', user_views.index, name='index'),
    path('login/', user_views.logout_user, name='logout_user'),

]
