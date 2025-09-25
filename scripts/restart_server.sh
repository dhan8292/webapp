#!/bin/bash
cd /home/ec2-user/flask-app

# Kill any running Flask app
pkill -f "python app.py" || true
pkill -f "python3 app.py" || true

# Start the app in the background
nohup python3 app.py > flask.log 2>&1 &
