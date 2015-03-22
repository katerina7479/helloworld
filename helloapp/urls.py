from django.conf.urls import patterns, url

from helloapp import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
)