from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^(?P<productName>\w{0,20}\.\w{0,20})', views.getProduct),
    url(r'add', views.addProduct),
    url(r'getAllProducts', views.getAllProducts),

]
