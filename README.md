## sdn-lg

AmLight's SDN Looking Glass repository. This repository contains all sub-projects and services (on docker) that compose sdn-lg.

## Installation

First you have to clone this repository, and then compose up the environment with docker-compose.

```
git clone https://github.com/amlight/sdn-lg.git --recursive
```

## sdn-lg compose up

In order to spin up all containers:

```
docker-compose up -d
```

After everything is up and running, Kytos interface can then be accessed at

```
http://localhost:8181
```

and Grafana interface at

```
http://localhost:3000
```

## Contact

You can reach out at `dev@amlight.net`.
