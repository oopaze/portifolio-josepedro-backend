#!/bin/bash
cd backend
python manage.py collectstatic
gunicorn src.wsgi