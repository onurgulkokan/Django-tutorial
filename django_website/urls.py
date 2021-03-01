from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include('django_website.apps.public.urls')),
    path("accounts", include('django_website.apps.accounts.urls')),
]
 