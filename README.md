# auto-compose #

`auto-compose` is a simple utility for dealing with simple Docker Compose
deployments.

Basically, it just runs `docker-compose up`, then waits for a new images
on a Docker Registry and runs `docker-compose up $subservice` when that
service updates.

Currently, any regard for anything that isn't taken care of under these
two commands is not in scope. I don't know what this means for production
deployments; I'm mostly deploying prototypes and services for personal use.
Feel free to send PRs though.
