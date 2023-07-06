# Configurações Locais

Este projeto ajuda na configuração de ambientes locais

## Databases

### MySQL

`docker-compose -f mysql.yaml -p mysql up -d`

- Hostname: mysql
- Port: 3306
- Root Password: localhost
- PhpMyAdmin port: 8088

### PostgreSQL

`docker-compose -f postgres.yaml -p postgres up -d`

- Hostname: postgres
- Port: 5432
- Default User: postgres
- Default Pass: postgres
- Adminer port: 8080
- PgAdmin port: 8081

### Redis

`docker-compose -f redis.yaml -p redis up -d`

- Hostname: redis
- Port: 6379
- Commander Port: 8081
- Manager Port: 16379

### SqlServer

`docker-compose -f sqlserver.yaml -p sqlserver up -d`

- Hostname: sqlserver
- Port: 1433
- SA Password: L0c@lh0st

## Services

### Kafka

`docker-compose -f kafka.yaml -p kafka up -d`

- Hostname: kafka
- Port: 9021
