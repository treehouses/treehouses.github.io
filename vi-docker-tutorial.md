# Docker Tutorial

## Objectives

- Learn about Docker and Docker Compose
- Learn about running Planet with Docker
- Learn Docker and Docker Compose commands

## Introduction

**[Docker](https://www.docker.com/what-docker)** is a computer program that performs operating-system-level virtualization also known as containerization. In this section, you will learn the basics of interacting with Docker and Docker Compose through the command-line interface.

Now, take a look at [README](https://github.com/open-learning-exchange/planet/tree/master/docker#planet--docker) file in docker folder of `planet` then read the brief rundown below.

## Docker

Please read about [Docker concepts](https://docs.docker.com/get-started/#docker-concepts) and [Docker overview](https://docs.docker.com/engine/docker-overview/) to get a sense of what Docker is.

A few common Docker CLI commands you might need for working with `planet` are:

- `docker ps` – show running containers
- `docker ps -a` - show all containers
- `docker logs <container-id> -f` - follow the log output of a container
- `docker images` – list images

## Docker Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s [services](https://docs.docker.com/get-started/part3/#about-services). Then, with a single command, you create and start all the services from your configuration. You can read more about Docker Compose at [Overview of Docker Compose](https://docs.docker.com/compose/overview/).

Now, take a look at [the YAML file for planet](https://github.com/open-learning-exchange/planet/blob/master/docker/planet.yml). There are 3 services in planet's docker-compose YAML file:

- `planet` – our production optimized `planet` that's served via [Nginx](https://kinsta.com/knowledgebase/what-is-nginx/)
- `couchdb` – a CouchDB container
- `db-init` – CouchDB initialization data, it contains all the schema necessary for our `planet` to run.

Below you'll find a few common `docker-compose` commands you would need throughout working with `planet` (the following examples assumes you are in planet repo's docker folder):

- `docker-compose -f planet.yml -p planet up -d --build` – spawn your environment for the *first time*
  - `-f` – specify an alternate compose file (default: docker-compose.yml)
  - `-p` – specify a project name (default: directory name)
  - `up -d ` - create and start containers in the background

- `docker-compose -f planet.yml -p planet logs -f` – follow the log output, press 'CTRL+C' to exit logs view

- `docker-compose -f planet.yml -p planet stop` – stop `planet` without removing it

- `docker-compose -f planet.yml -p planet start` – start `planet` again

- `docker-compose -f planet.yml -p planet down` – stops containers and removes containers, networks, volumes, and images created

## Docker & Planet

In the [previous step]( http://open-learning-exchange.github.io/#!./pages/vi/vi-planet-installation-vagrant.md) when you ran `vagrant up prod` Docker is set up to run Planet automatically. Below are the steps to install Planet manually, which can also be used to upgrade to the latest version of Planet.

1. Go to your OLE project folder, and use `cd planet` to enter into the `planet` directory. This is the repository you cloned in the [previous step]( http://open-learning-exchange.github.io/#!./pages/vi/vi-planet-installation-vagrant.md)

2. Use `vagrant ssh prod` to connect to your virtual machine

3. Then enter into the docker folder with `cd /vagrant/docker`.

4. Pull the latest `planet` and its db-init Docker image

  - `docker pull treehouses/planet:latest`
  - `docker pull treehouses/planet:db-init`

  - `docker tag treehouses/planet:latest treehouses/planet:local`
  - `docker tag treehouses/planet:db-init treehouses/planet:db-init-local`
  
5. Run the *following command* to spawn your environment for the **first time**:

    ```
    ATTENTION: if you followed Step1 and configured Planet, you should not run `docker-compose -f planet.yml -p planet up -d --build`.
    It might destroy your configuration.
    `vagrant up prod` runs `docker-compose -f planet.yml -p planet up -d --build` automatically.
    ```
    If this is your **first** time spawning the environment, run:
   
  `docker-compose -f planet.yml -p planet up -d --build`


1. See if the docker containers are running: `docker ps -a`. You'll see your running container similar to this

    ```
    CONTAINER ID        IMAGE                       COMMAND                  CREATED             STATUS                      PORTS                                        NAMES
    6ad5d3f2ba2b        treehouses/planet:latest    "/bin/sh -c 'sh ./do…"   38 seconds ago      Up 46 seconds               0.0.0.0:80->80/tcp                           planet_planet_1
    e78eb9287454        treehouses/planet:db-init   "/bin/sh -c 'bash ./…"   38 seconds ago      Exited (0) 34 seconds ago                                                planet_db-init_1
    3c2309e92dc6        treehouses/couchdb:2.1.1    "tini -- /docker-ent…"   39 seconds ago      Up 48 seconds               4369/tcp, 9100/tcp, 0.0.0.0:2200->5984/tcp   planet_couchdb_1
    ```

1. See log in action with `docker-compose -f planet.yml -p planet logs -f`, press 'CTRL+C' to exit logs view


## More about Docker and Docker Compose

We install and run Docker and Docker Compose from the Vagrant virtual machine because it is quicker to get everyone up and running and easier to troubleshoot as issues come up. Docker can also be installed directly on your machine. If you are curious about how to install Docker you can [read our guide](vi-docker-installation.md). We do **not recommend** running Planet this way because we may **not be able to help** if there are issues.

We suggest you to look at [Docker CLI's reference](https://docs.docker.com/engine/reference/commandline/cli/) and [docker-compose CLI's reference](https://docs.docker.com/compose/reference/overview/) to find out more about their commands and usage.

You could also use `docker --help` and `docker-compose --help` to see brief usage instruction of other commands that you might need. It's also very helpful to run `docker COMMAND --help` or `docker-compose COMMAND --help` for information on a specific command.

Below you will find the output of `docker-compose logs --help`, `docker --help`, and `docker-compose --help`.

```
$ docker-compose logs --help

View output from containers.

Usage: logs [options] [SERVICE...]

Options:
    --no-color          Produce monochrome output.
    -f, --follow        Follow log output.
    -t, --timestamps    Show timestamps.
    --tail="all"        Number of lines to show from the end of the logs
                        for each container. View output from containers.

Usage: logs [options] [SERVICE...]

Options:
    --no-color          Produce monochrome output.
    -f, --follow        Follow log output.
    -t, --timestamps    Show timestamps.
    --tail="all"        Number of lines to show from the end of the logs
                        for each container.
```

```
$ docker --help

Usage:  docker COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/Users/yiboxu/.docker")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level ("debug"|"info"|"warn"|"error"|"fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/Users/yiboxu/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/Users/yiboxu/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/Users/yiboxu/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  checkpoint  Manage checkpoints
  config      Manage Docker configs
  container   Manage containers
  image       Manage images
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  deploy      Deploy a new stack or update an existing stack
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.
```

```
$ docker-compose --help

Define and run multi-container applications with Docker.

Usage:
  docker-compose [-f <arg>...] [options] [COMMAND] [ARGS...]
  docker-compose -h|--help

Options:
  -f, --file FILE             Specify an alternate compose file
                              (default: docker-compose.yml)
  -p, --project-name NAME     Specify an alternate project name
                              (default: directory name)
  --verbose                   Show more output
  --log-level LEVEL           Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --no-ansi                   Do not print ANSI control characters
  -v, --version               Print version and exit
  -H, --host HOST             Daemon socket to connect to

  --tls                       Use TLS; implied by --tlsverify
  --tlscacert CA_PATH         Trust certs signed only by this CA
  --tlscert CLIENT_CERT_PATH  Path to TLS certificate file
  --tlskey TLS_KEY_PATH       Path to TLS key file
  --tlsverify                 Use TLS and verify the remote
  --skip-hostname-check       Don't check the daemon's hostname against the
                              name specified in the client certificate
  --project-directory PATH    Specify an alternate working directory
                              (default: the path of the Compose file)
  --compatibility             If set, Compose will attempt to convert deploy
                              keys in v3 files to their non-Swarm equivalent

Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information
```

## Useful Links

[What is Docker?](https://www.docker.com/what-docker)
[Docker Concepts](https://docs.docker.com/get-started/#docker-concepts)
[Docker Overview](https://docs.docker.com/engine/docker-overview/)
[Docker Compose](https://docs.docker.com/compose/overview/)
[Docker CLI Command](https://docs.docker.com/engine/reference/commandline/cli/)
[Docker Installation](http://open-learning-exchange.github.io/#!./pages/vi/vi-docker-installation.md)

## Next Section _(Step 3)_ **→**

Markdown is a lightweight markup language with plain text formatting syntax. In the next section, you will learn Markdown to create a profile page, and learn how to create a pull request.

#### Return to [First Steps](vi-first-steps.md#Step_2_-_Planet_and_Docker)
