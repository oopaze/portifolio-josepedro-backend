#!/bin/bash
cd app
python manage.py collectstatic
python manage.py migrate
gunicorn src.wsgi