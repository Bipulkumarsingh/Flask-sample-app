#!/bin/bash
set -e

gunicorn -b 127.0.0.1:8080 --worker-class gevent -w 2 --threads 2 app:app --max-requests-jitter 200 --max-requests 150 --reload