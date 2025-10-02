#!/usr/bin/env bash
set -o errexit  # exit on first error

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput