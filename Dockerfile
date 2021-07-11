ARG version=latest
# This image is used for golang app development and building.
# Included:
# - Builiding deps;
# - Git;
FROM golang:${version}-alpine

# Default directory is set outside of $GOPATH in order to
# make process of modular dev easier.
WORKDIR /src

RUN apk add --no-cache \
    git \
    gcc \
    musl-dev


