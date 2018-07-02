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
cd sdn-lg
docker-compose up -d
```

## Using sdn-lg

To use sdn-lg you must set it as a controller of your switches. The controller runs on port `6633` of the machine running the containers.

After everything is up and running, Kytos interface can then be accessed at

```
http://localhost:8181
```

and Grafana interface at

```
http://localhost:3000
```

To use Grafana interface, default user is `admin` and passwoard `admin`. The documentation on the web interface can be accessed [here](https://github.com/amlight/grafana-amlight-app-sdnlg/blob/master/README.md).

## Contact

You can reach out at `dev@amlight.net`.
