# Hetzner Certbot

A Docker-based [Certbot](https://hub.docker.com/r/certbot/certbot) image with the [certbot-dns-hetzner-cloud](https://github.com/rolschewsky/certbot-dns-hetzner-cloud) plugin for issuing and renewing Let's Encrypt SSL certificates using Hetzner DNS as the DNS-01 challenge provider.

---

## Prerequisites

- Docker
- A [Hetzner Cloud](https://www.hetzner.com/cloud) account with a API token
- A domain name managed by Hetzner DNS (e.g. example.com)
- `make` installed on your system

---

## Setup

### 1. Initialise config files

```bash
make init
```

### 2. Configure `.env`


### 3. Configure `certbot.env`

---

## Usage

### Issue a new certificate

```bash
make create
```

Runs Certbot in `certonly` mode using the Hetzner DNS-01 authenticator. The certificate will be stored in `$DATA_FOLDER_PATH/certbot`.

### Renew certificates

```bash
make renew
```

Renews all existing certificates managed by this Certbot instance.


# [Docker hub](https://hub.docker.com/r/bex1111/hetzner-certbot)