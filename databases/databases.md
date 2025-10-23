# Databases

## SQL

### SqlServer

- Hostname: sqlserver
- Port: 1433
- SA Password: L0c@lh0st

[Kubernetes](sqlserver-k8.yaml)

```sh
kubectl apply -f .\sqlserver-k8.yaml
```

[Docker](sqlserver-docker.yaml)

```sh
docker-compose -f .\sqlserver-docker.yaml -p sqlserver up -d
```

### Postgres

- Hostname: postgres
- Port: 5432
- Default User: postgres
- Default Pass: postgres
- PgAdmin port: 8081

[Kubernetes](postgres-k8.yaml)

```sh
kubectl apply -f .\postgres-k8.yaml
```

[Docker](postgres-docker.yaml)

```sh
docker-compose -f .\postgres-docker.yaml -p postgres up -d
```

### MySQL

- Hostname: mysql
- Port: 3306
- Root Password: localhost
- PhpMyAdmin port: 8088

[Kubernetes](mysql-k8.yaml)

```sh
kubectl apply -f .\mysql-k8.yaml
```

[Docker](mysql-docker.yaml)

```sh
docker-compose -f .\mysql-docker.yaml -p mysql up -d
```

## NoSQL

### MongoDB

- Hostname: mongodb
- Port: 27017
- User: mongodb
- Password: mongodb

[Kubernetes](mongodb-k8.yaml)

```sh
kubectl apply -f .\mongodb-k8.yaml
```

[Docker](mongodb-docker.yaml)

```sh
docker-compose -f .\mongodb-docker.yaml -p mongodb up -d
```

### Redis

- Hostname: redis
- Port: 6379
- Commander Port: 8081
- Manager Port: 16379

[Kubernetes](redis-k8.yaml)

```sh
kubectl apply -f .\redis-k8.yaml
```

[Docker](redis-docker.yaml)

```sh
docker-compose -f .\redis-docker.yaml -p redis up -d
```
