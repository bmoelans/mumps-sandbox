# Mumps Sandbox

This repository contains a sandbox to play with Mumps, more precise [YottaDB](https://yottadb.com/).
It is based on the [YottaDB Docker image](https://hub.docker.com/r/yottadb/).
The main extra is that files are mapped between your host OS and the docker-container.
So you do not lose m-files and globals when restarting the container.
It installs mumps in a [Docker](https://www.docker.com/what-docker) container and uses
a shared folder `data/r` to put m-files in this virtual environment to make them runnable.

Note that this is a sandbox/playbox, so it can contain errors but I am also open for suggestions to improvements.

## Useful links


### Gettings started
* [Tutorial: Getting Started with MUMPS](http://www.lauradhamilton.com/tutorial-getting-started-with-mumps): The Docker is inspired by this tutorial.
* [YottaDB Administration and Operations Guide](https://docs.yottadb.com/AdminOpsGuide/index.html)
* [Docker Get Started](https://docs.docker.com/get-started/)
* [MUMPS Documentation](http://mumps.sourceforge.net/docs.html)


## Quickstart

### Prerequisites

* Docker Engine (v1.10 or higher): https://docs.docker.com/engine/installation/
* Docker Compose (v1.6 or higher): https://docs.docker.com/compose/install/


### Step by step

#### 1. Clone this repository:
```bash
git clone https://github.com/bmoelans/mumps-sandbox.git
```

#### 2. Step into the directory
```bash
cd mumps-sandbox
```

#### 3. Build the docker environment. (It will prepare your runtime and dev environment.)
Docker toolbox users, run this first:
```bash
eval $(docker-machine env default)
```
Everyone:
```bash
docker-compose -p mumps build
```

#### 6. Run bash environment of the Mumps-sandbox docker container
```bash
docker-compose run --rm mumps
```
#### 7. Run M in container
```bash
root@...:/data# M
```

From here you can look at [Tutorial: Getting Started with MUMPS](http://www.lauradhamilton.com/tutorial-getting-started-with-mumps) to play around. Note the file `Hello.m` is already pre-installed so you can immediatelyy run `d MYLABEL^Hello`.

Files added in you native OS under `data/r` will be available in the Docker container of the Mumps sandbox.
