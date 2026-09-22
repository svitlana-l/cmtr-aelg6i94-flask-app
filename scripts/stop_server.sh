#!/bin/bash
systemctl stop flask-app 2>/dev/null || true
pkill -f "gunicorn" || true
exit 0
