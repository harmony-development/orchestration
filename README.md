# Harmony Orchestration

## Legato docker-compose

To run Legato and all its dependencies in docker/compose:

```sh
$ docker-compose -f docker-compose.legato.yml build
$ docker-compose -f docker-compose.legato.yml up
<^C>
$ vi config/config.json
$ docker-compose -f docker-compose.legato.yml up -d
```

The default postgres information is `postgres` - as username, password, hostname and database name.
You can change this via environment variables in the docker-compose (see "environment variables" in [the postgres docker hub readme](https://hub.docker.com/_/postgres)).

This automatically builds from the main branch of [legato](https://github.com/harmony-development/legato).
<br> If you wish to build from a different branch, just specify the branch as a build argument, like so:

```sh
$ docker-compose -f docker-compose.legato.yml build --build-arg branch=staging
```
