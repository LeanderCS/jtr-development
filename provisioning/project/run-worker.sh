#!/usr/bin/env bash

cd /home/backend/worker

nohup celery -A tasks worker --loglevel=info > /var/log/worker.log 2>&1 &
