#!/bin/sh

cd /home/backend/worker

python3 -m venv venv
. venv/bin/activate

pip install -r requirements.txt > /dev/null 2>&1 || { echo "pip install failed"; exit 1; }

exec celery -A tasks worker --loglevel=info
