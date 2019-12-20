from django.conf.urls import url
from . import views


urlpatterns = [
<<<<<<< HEAD
    url(r'^(?P<productTitle>\w{0,20}\.\w{0,20})', views.getProduct),
=======
    url(r'^(?P<productName>\w{0,20}\.\w{0,20})', views.getProduct),
    url(r'add', views.addProduct),
    url(r'getAllProducts', views.getAllProducts),

>>>>>>> 954d86afb9da883409ef465c633a0b6193ab59c7
]
