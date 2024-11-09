#!/usr/bin/env bash

cd /home/backend

. venv/bin/activate

echo "Waiting for MySQL to start"
while ! nc -z localhost 3307; do
  sleep 1
done
echo "MySQL started"

python - <<END

from config.app import createApp
from DataDomain.Database.db import initDatabase

app = createApp()

initDatabase(app)

END
