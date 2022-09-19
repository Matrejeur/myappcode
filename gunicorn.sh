#!/bin/bash
source django/bin/activate

cd /var/lib/jenkins/workspace/django-cicd

python3 manage.py makemigrations
python3 manage.py migrate

echo "Migrate Done"

cd /var/lib/jenkins/workspace/django-cicd

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"


sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "gunicorn has been started"

sudo systemctl status jenkins
sudo systemctl restart jenkins