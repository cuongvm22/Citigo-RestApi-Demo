from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^(?P<productTitle>\w{0,20}\.\w{0,20})', views.getProduct),
]
