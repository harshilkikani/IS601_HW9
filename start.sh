#!/bin/bash

# Adjust permissions for the qr_codes directory (production: restrict to app user)
chmod 770 /myapp/qr_codes
chown -R myuser:myuser /myapp/qr_codes

# Start the FastAPI application
if [ "$APP_ENV" = "production" ]; then
    # Production: use Gunicorn
    exec gunicorn -k uvicorn.workers.UvicornWorker -w 4 -b :8000 app.main:app
else
    # Development: use Uvicorn with reload
    exec uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
fi
