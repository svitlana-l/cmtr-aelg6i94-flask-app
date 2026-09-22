#!/bin/bash
systemctl enable flask-app
systemctl restart flask-app
for i in $(seq 1 30); do
  if curl -sf http://localhost:8000/ > /dev/null; then
    echo "App is healthy"
    exit 0
  fi
  sleep 2
done
echo "App did not become healthy"
exit 1
