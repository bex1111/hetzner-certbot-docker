FROM certbot/certbot:v5.9.0

COPY requirements.txt .
RUN pip install -r requirements.txt