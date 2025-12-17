# StreamMe - Nginx Web Server

A simple nginx web server setup using Docker.

## Quick Start

### Using Docker Compose (Recommended)

```bash
docker-compose up -d
```

The server will be available at http://localhost:8080

### Using Docker directly

Build the image:
```bash
docker build -t streamme-nginx .
```

Run the container:
```bash
docker run -d -p 8080:80 --name streamme-nginx streamme-nginx
```

### Stop the server

With Docker Compose:
```bash
docker-compose down
```

With Docker directly:
```bash
docker stop streamme-nginx
docker rm streamme-nginx
```

## Files

- `nginx.conf` - Nginx configuration file
- `index.html` - Default HTML page to serve
- `Dockerfile` - Docker image definition
- `docker-compose.yml` - Docker Compose configuration

## Port

The server runs on port 80 inside the container and is mapped to port 8080 on your host machine.
