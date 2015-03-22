PROJECT := $(shell grep 'name=' setup.py | head -n1 | cut -d '=' -f 2 | sed "s/['\", ]//g")
CC := /usr/bin/gcc

prereqs :
	virtualenv env
	CC=$(CC) $(PWD)/env/bin/pip install -r requirements.txt
	$(PWD)/env/bin/django-admin.py startproject test_project || echo "test_project already created"
	$(PWD)/env/bin/python setup.py develop

test :
	$(PWD)/env/bin/python test_project/manage.py test helloapp.tests --settings=$(SETTINGS)

migrate :
    $(PWD)/env/bin/python test_project/manage.py migrate

server :
    $(PWD)/env/bin/python test_project/manage.py runserver
