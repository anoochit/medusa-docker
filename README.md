# Medusa.js docker compose

## Build

Build backend with docker compose

`docker compose build`

Run server

`docker compose up -d`

The backend API is running at http://localhost:9000 and the admin dashboard running at port http://localhost:7001

## Config

Attach to container

`docker exec -it medusa-server bash`

Add sample data from seed

`medusa seed -m -f data/seed.json`

Add a new admin user

`medusa user -e admin@example.com -p Hello123`

Test API

`curl http://localhost:9000/store/products`
