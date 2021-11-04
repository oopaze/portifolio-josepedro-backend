
import os

from pathlib import Path
from dotenv import load_dotenv


BASE_DIR = Path(__file__).resolve().parent.parent
dotenv_path = BASE_DIR / '.env.dev'
load_dotenv(dotenv_path)

SITE_URL = os.getenv("SITE_URL", default='http://localhost:8000')


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.getenv('DB_NAME'),
        'USER': os.getenv('DB_USER'),
        'PASSWORD': os.getenv('DB_PASSWD'),
        'HOST': os.getenv('DB_HOST', 'localhost'),
        'PORT': os.getenv('DB_POST', 5432)
    }
}

CORS_ALLOWED_ORIGINS = [
    os.getenv('FRONTEND_API', default="http://localhost:3000"),
]