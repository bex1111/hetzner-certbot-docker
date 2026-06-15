-include .env

IMAGE_NAME = bex1111/hetzner-certbot

init:
	cp .env.example .env &&\
    cp example.certbot.env certbot.env

build:
	docker build -t $(IMAGE_NAME) .

create:
	docker run --rm \
      -e TZ=$(TIMEZONE) \
      -v $(DATA_FOLDER_PATH)/certbot:/etc/letsencrypt \
      -v $(SECRET_FOLDER_PATH)/certbot.env:/etc/letsencrypt/certbot.env \
      $(IMAGE_NAME) certonly \
      --authenticator dns-hetzner-cloud \
      --dns-hetzner-cloud-credentials /etc/letsencrypt/certbot.env \
      --email $(EMAIL) \
      --agree-tos \
      --no-eff-email \
      -d "$(DOMAIN_NAME)"

renew:
	docker run --rm \
      -e TZ=$(TIMEZONE) \
      -v $(DATA_FOLDER_PATH)/certbot:/etc/letsencrypt \
      -v $(SECRET_FOLDER_PATH)/certbot.env:/etc/letsencrypt/certbot.env \
      --dns-hetzner-cloud-credentials /etc/letsencrypt/certbot.env \
      $(IMAGE_NAME) renew


default: help

help:
	cat Makefile