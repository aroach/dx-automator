#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z looker-db 5432; do
    sleep 0.1
done

echo "PostgresSQL started"

python main.py runserver -h 0.0.0.0