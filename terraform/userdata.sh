#!/bin/bash

yum update -y
yum install git python3 -y

git clone https://github.com/YOUR_GITHUB_USERNAME/aws-flask-app.git

cd aws-flask-app/app

pip3 install -r requirements.txt

nohup python3 app.py &