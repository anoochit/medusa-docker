# Medusa.js docker compose

## Build container

Build backend with docker compose

`docker compose build`

## Run server

Run server

`docker compose up -d`

The backend API is running at http://localhost:9000 and the admin dashboard running at port http://localhost:7001

## Add new admin account

Attach to medusa-server container

`docker exec -it medusa-server bash`

Add sample data from seed

`medusa seed -m -f data/seed.json`

Add a new admin user

`medusa user -e admin@example.com -p Hello123`

Test API

`curl http://localhost:9000/store/products`

Swagger UI

 - [Store](http://localhost:4002)
 - [Admin](http://localhost:4001)

Swagger Code Gen Package
 
- [MedusaJS](./package/medusajs/)

Note for Flutter Admin from [mllrr96](https://github.com/mllrr96)

- [Medusa Admin Flutter](https://github.com/mllrr96/Medusa-Admin-Flutter)
- [Medusa API Flutter](https://github.com/mllrr96/Medusa_Store_API_Flutter)
