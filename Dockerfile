FROM certbot/certbot:v5.5.0

COPY requirements.txt .
RUN pip install -r requirements.txt