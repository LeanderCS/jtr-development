#!/usr/bin/env bash

cd /home/backend

. venv/bin/activate

nohup python3 run.py > /var/log/backend.log 2>&1 &
