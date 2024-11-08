#!/bin/sh

cd /home/backend

python3 -m venv venv
. venv/bin/activate

pip install -r requirements.txt > /dev/null 2>&1 || { echo "pip install failed"; exit 1; }

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
