FROM certbot/certbot:v5.4.0

COPY requirements.txt .
RUN pip install -r requirements.txt