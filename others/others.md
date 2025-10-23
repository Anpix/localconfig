# Others

## Cloudflared

[Kubernetes](cloudflared-k8.yaml)

```sh
kubectl apply -f .\k8\cloudflared.yaml
```

[Docker](cloudflare-docker.yaml)

```sh
docker-compose -f .\docker\cloudflare.yaml -p cloudflare up -d
```

```sh
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --hello-world
```

```sh
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token YOUR_TOKEN_HERE
```

## Datadog

```sh
helm install datadog-agent -f datadog-values.yaml --set datadog.site='datadoghq.com' --set datadog.apiKey='YOUR_API_KEY_HERE' datadog/datadog
```

```sh
helm upgrade -f datadog-values.yaml datadog-agent datadog/datadog
```
