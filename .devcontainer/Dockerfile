# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
FROM raychorn/ubuntu_python38:latest

# https://vitux.com/how-to-install-and-configure-mysql-in-ubuntu-18-04-lts/

RUN apt-get update -y && \
    apt-get upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends mysql-server
