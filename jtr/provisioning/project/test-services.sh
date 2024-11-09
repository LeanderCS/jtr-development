#!/usr/bin/env bash

echo "Prüfe MySQL"
nc -z localhost 3307 && echo "MySQL läuft" || echo "MySQL läuft nicht"

echo "Prüfe Redis"
nc -z localhost 6379 && echo "Redis läuft" || echo "Redis läuft nicht"

echo "Prüfe RabbitMQ"
nc -z localhost 5672 && echo "RabbitMQ läuft" || echo "RabbitMQ läuft nicht"

echo "Prüfe Flask"
nc -z localhost 5001 && echo "Flask läuft" || echo "Flask läuft nicht"

echo "Prüfe Celery-Worker"
ps aux | grep '[c]elery' && echo "Celery läuft" || echo "Celery läuft nicht"

