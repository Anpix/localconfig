# Databases

## SQL

### SqlServer

- Hostname: sqlserver
- Port: 1433
- SA Password: L0c@lh0st

[Kubernetes](sqlserver-k8.yaml)

Using WSL run the following commands to create a folder and grant permissions

```sh
sudo mkdir -p /mnt/c/rancher-data/sqlserver/{data,log,secrets}
sudo chown -R 10001:0 /mnt/c/rancher-data/sqlserver
sudo chmod -R 777 /mnt/c/rancher-data/sqlserver
```

Apply the YAML

```sh
kubectl apply -f .\sqlserver-k8.yaml
```

[Docker](sqlserver-docker.yaml)

```sh
docker-compose -f .\sqlserver-docker.yaml -p sqlserver up -d
```

This is the command to copy the backup files from the container:

```sh
docker cp sqlserver:/var/opt/mssql/data/. .
```

### Postgres

- Hostname: postgres
- Port: 5432
- Default User: postgres
- Default Pass: postgres
- PgAdmin port: 8081

To register the server in PgAdmin:

- Kubernetes (PgAdmin runs in the same `postgres` namespace): use the Service DNS `postgres.postgres.svc.cluster.local` (or just `postgres`). The format is `<service>.<namespace>.svc.cluster.local`.
- Docker, or PgAdmin outside the cluster: use `host.docker.internal` (Rancher Desktop also accepts `host.rancher-desktop.internal`), which points to the host machine where port 5432 is exposed.

[Kubernetes](postgres-k8.yaml)

```sh
kubectl apply -f ./databases/postgres-k8.yaml
```

[Docker](postgres-docker.yaml)

```sh
docker-compose -f ./postgres-docker.yaml -p postgres up -d
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

**Clients:**

- [Studio3T Free](https://studio3t.com/free/)

### Redis

- Hostname: redis
- Port: 6379
- Commander Port: 8081
- Manager Port: 16379

[Kubernetes](redis-k8.yaml)

```sh
kubectl apply -f ./databases/redis-k8.yaml
```

[Docker](redis-docker.yaml)

```sh
docker-compose -f .\redis-docker.yaml -p redis up -d
```
