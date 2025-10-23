# Operational Systems

- [Linux](#linux)
- [MacOS](#macos)

## Linux

### Kali Linux

[Kubernetes](kali-k8.yaml)

```sh
kubectl apply -f .\kali-k8.yaml
```

[Docker](kali-docker.yaml)

```sh
docker-compose -f .\kali-docker.yaml -p kali up -d
```

## MacOS

### MacOSX

[Kubernetes](macosx-k8.yaml)

```sh
kubectl apply -f .\macosx-k8.yaml
```

[Docker](macosx-docker.yaml)

```sh
docker run -it --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:auto
```

### Catalina

[Kubernetes](catalina-k8.yaml)

```sh
kubectl apply -f .\catalina-k8.yaml
```

[Docker](catalina-docker.yaml)

```sh
docker run -it --device /dev/snd -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" sickcodes/docker-osx:latest
```

```sh
docker build -t docker-osx .
```

### Ventura

[Kubernetes](ventura-k8.yaml)

```sh
kubectl apply -f .\ventura-k8.yaml
```

[Docker](ventura-docker.yaml)

```sh
docker run -it --name MacOS-Ventura --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" -e GENERATE_UNIQUE=true -e MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist' sickcodes/docker-osx:ventura
```

```sh
docker build -t docker-osx --build-arg SHORTNAME=ventura .
```
