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

### Keycloak

This keycloak configuration depends of an instance of SQL Server.
After you created a server, create a database called `keycloak`.
Don't forget to give access to this db for the user `keycloak` with the password `keycloak`.

`docker-compose -f keycloak.yaml -p keycloak up -d`

- Hostname: keycloak
- Port: 8080
- User: admin
- Password: admin

## Operational Systems

### Kali Linux

`docker-compose -f kali.yaml -p kali up -d`

### MacOSX

`docker run -it --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:auto`

#### Catalina

`docker run -it --device /dev/snd -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:latest`

`docker build -t docker-osx .`

#### Ventura

`docker run -it --name MacOS-Ventura --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" -e GENERATE_UNIQUE=true -e MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist' sickcodes/docker-osx:ventura`

`docker build -t docker-osx --build-arg SHORTNAME=ventura .`

## Others

### Cloudflared

`docker-compose -f cloudflare.yaml -p cloudflare up -d`

`docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --hello-world`
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token YOUR_TOKEN_HERE
