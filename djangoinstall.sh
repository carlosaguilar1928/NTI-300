#!/bin/bash
   yum install python-pip -y
   pip install virtualenv
   pip install --upgrade pip
   
   # setting up the django environment
   mkdir /opt/myproject
   cd /opt/myproject
   virtualenv myprojectenv
   source myprojectenv/bin/activate
   pip install django psycopg2
   django-admin.py startproject myproject .
   
   yum install tree -y
   tree myproject
   # these commands are just for visual effect
   
  vim myproject/settings.py
  # 
   
   
   
   ##### old stuff###
   yum install epel-release -y
   yum install python34 -y
   virtualenv -p python3 django
   cd /opt/django/django
   source /opt/django/django/bin/activate

   # installing django
   pip install django
   django-admin startproject project1
   chown -R carlosaguilar1928 /opt/django/*
  
   myip=( curl https://api.ipify.org )
   sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['"$myip"'\]/g" /opt/django/django/project1/project1/settings.py
 
  # start the django service 
   sudo -u carlosaguilar1928 -E sh -c "source /opt/django/django/bin/activate && /opt/django/django/project1/manage.py runserver 0.0.0.0:8000&"
   yum install -y git
