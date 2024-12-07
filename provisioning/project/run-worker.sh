#!/usr/bin/env bash

cd /home/backend/worker

nohup celery -A tasks worker --loglevel=info > /var/log/worker.log 2>&1 &

. venv/bin/activate

nohup python3 -m aiosmtpd -n -l localhost:1025 > /var/log/aiosmtpd.log 2>&1 &
