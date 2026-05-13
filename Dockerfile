FROM certbot/certbot:v5.6.0

COPY requirements.txt .
RUN pip install -r requirements.txt