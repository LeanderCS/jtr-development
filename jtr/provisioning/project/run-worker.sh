#!/usr/bin/env bash

cd /home/backend/worker

exec celery -A tasks worker --loglevel=info
