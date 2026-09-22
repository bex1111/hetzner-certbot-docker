FROM certbot/certbot:v5.8.0

COPY requirements.txt .
RUN pip install -r requirements.txt