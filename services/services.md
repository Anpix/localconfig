# Services

## Kafka

- Hostname: kafka
- Port: 9021

[Kubernetes](kafka-k8.yaml)

```sh
kubectl apply -f .\kafka-k8.yaml
```

[Docker](kafka-docker.yaml)

```sh
docker-compose -f .\kafka-docker.yaml -p kafka up -d
```

## Keycloak

This keycloak configuration depends of an instance of SQL Server.
After you created a server, create a database called `keycloak`.
Don't forget to give access to this db for the user `keycloak` with the password `keycloak`.

- Hostname: keycloak
- Port: 8080
- User: admin
- Password: admin

[Kubernetes](keycloak-k8.yaml)

```sh
kubectl apply -f .\keycloak-k8.yaml
```

[Docker](keycloak-docker.yaml)

```sh
docker-compose -f .\keycloak-docker.yaml -p keycloak up -d
```
