#!/bin/bash
set -e
pip3 install -r /opt/flask-app/requirements.txt
cp /opt/flask-app/flask-app.service /etc/systemd/system/flask-app.service
systemctl daemon-reload
