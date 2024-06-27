#!/bin/bash
yum update -y
yum install -y python3 git
pip3 install flask

# Clone the Flask app from your repository
cd /home/ec2-user
git clone https://github.com/TheMashcraft/turtle-watching.git
cd turtle-watching
pip3 install -r requirements.txt

# Run the Flask app
nohup python3 app.py &
