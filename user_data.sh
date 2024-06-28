#!/bin/bash
# Update the instance
sudo yum update -y

# Install Python 3 and Git
sudo yum install -y python3 git

# Install pip for Python 3
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

# Install Flask using pip
sudo pip3 install flask

# Clone the Flask app from your repository
cd /home/ec2-user
git clone https://github.com/TheMashcraft/turtle-watching.git
cd turtle-watching

# Install the required Python packages
sudo pip3 install -r requirements.txt

# Run the Flask app
nohup python3 app.py &
