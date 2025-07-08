# Configurações Locais

Este projeto ajuda na configuração de ambientes locais

## Databases

### SqlServer

- Hostname: sqlserver
- Port: 1433
- SA Password: L0c@lh0st

[Kubernetes](k8/sqlserver.yaml)

```sh
kubectl apply -f .\k8\sqlserver.yaml
```

[Docker](docker/sqlserver.yaml)

```sh
docker-compose -f .\docker\sqlserver.yaml -p sqlserver up -d
```

### PostgreSQL

- Hostname: postgres
- Port: 5432
- Default User: postgres
- Default Pass: postgres
- PgAdmin port: 8081

[Kubernetes](k8/postgres.yaml)

```sh
kubectl apply -f .\k8\postgres.yaml
```

[Docker](docker/postgres.yaml)

```sh
docker-compose -f .\docker\postgres.yaml -p postgres up -d
```

### MySQL

- Hostname: mysql
- Port: 3306
- Root Password: localhost
- PhpMyAdmin port: 8088

[Kubernetes](k8/mysql.yaml)

```sh
kubectl apply -f .\k8\mysql.yaml
```

[Docker](docker/mysql.yaml)

```sh
docker-compose -f .\docker\mysql.yaml -p mysql up -d
```

### Redis

- Hostname: redis
- Port: 6379
- Commander Port: 8081
- Manager Port: 16379

[Kubernetes](k8\redis.yaml)

```sh
kubectl apply -f .\k8\redis.yaml
```

[Docker](docker\redis.yaml)

```sh
docker-compose -f .\docker\redis.yaml -p redis up -d
```

### MongoDB

- Hostname: mongodb
- Port: 27017
- User: mongodb
- Password: mongodb

[Kubernetes](k8/mongodb.yaml)

```sh
kubectl apply -f .\k8\mongodb.yaml
```

[Docker](docker/mongodb.yaml)

```sh
docker-compose -f .\docker\mongodb.yaml -p mongodb up -d
```

## Services

### Kafka

- Hostname: kafka
- Port: 9021

[Kubernetes](k8/kafka.yaml)

```sh
kubectl apply -f .\k8\kafka.yaml
```

[Docker](docker/kafka.yaml)

```sh
docker-compose -f .\docker\kafka.yaml -p kafka up -d
```

### Keycloak

This keycloak configuration depends of an instance of SQL Server.
After you created a server, create a database called `keycloak`.
Don't forget to give access to this db for the user `keycloak` with the password `keycloak`.

- Hostname: keycloak
- Port: 8080
- User: admin
- Password: admin

[Kubernetes](k8/keycloak.yaml)

```sh
kubectl apply -f .\k8\keycloak.yaml
```

[Docker](docker/keycloak.yaml)

```sh
docker-compose -f .\docker\keycloak.yaml -p keycloak up -d
```

## Operational Systems

### Kali Linux

[Kubernetes](k8/os\kali.yaml)

```sh
kubectl apply -f .\k8\os\kali.yaml
```

[Docker](docker/kali.yaml)

```sh
docker-compose -f .\docker\kali.yaml -p kali up -d
```

### MacOSX

[Kubernetes](k8/os\macosx.yaml)

```sh
kubectl apply -f .\k8\os\macosx.yaml
```

[Docker](docker/macosx.yaml)

```sh
docker run -it --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:auto
```

#### Catalina

[Kubernetes](k8/os\catalina.yaml)

```sh
kubectl apply -f .\k8\os\catalina.yaml
```

[Docker](docker/catalina.yaml)

```sh
docker run -it --device /dev/snd -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:latest
```

```sh
docker build -t docker-osx .
```

#### Ventura

[Kubernetes](k8/os\ventura.yaml)

```sh
kubectl apply -f .\k8\os\ventura.yaml
```

[Docker](docker/ventura.yaml)

```sh
docker run -it --name MacOS-Ventura --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" -e GENERATE_UNIQUE=true -e MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist' sickcodes/docker-osx:ventura
```

```sh
docker build -t docker-osx --build-arg SHORTNAME=ventura .
```

## Others

### Cloudflared

[Kubernetes](k8/cloudflared.yaml)

```sh
kubectl apply -f .\k8\cloudflared.yaml
```

[Docker](docker/cloudflare.yaml)

```sh
docker-compose -f .\docker\cloudflare.yaml -p cloudflare up -d
```

```sh
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --hello-world
```

```sh
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token YOUR_TOKEN_HERE
```

### Datadog

```sh
helm install datadog-agent -f datadog-values.yaml --set datadog.site='datadoghq.com' --set datadog.apiKey='YOUR_API_KEY_HERE' datadog/datadog
```

```sh
helm upgrade -f datadog-values.yaml datadog-agent datadog/datadog
```
