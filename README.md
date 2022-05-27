# Configurações Locais

Este projeto ajuda na configuração de ambientes locais

## MySQL

`docker-compose -f mysql.yaml -p mysql up -d`

- Hostname: mysql
- Port: 3306
- Root Password: localhost
- PhpMyAdmin port: 8088

## Redis

`docker-compose -f redis.yaml -p redis up -d`

- Hostname: redis
- Port: 6379
- Commander Port: 8081
- Manager Port: 16379

## SqlServer

`docker-compose -f sqlserver.yaml -p sqlserver up -d`

- Hostname: sqlserver
- Port: 1433
- SA Password: Localh0$t
