# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
#FROM raychorn/ubuntu_python38:latest
FROM raychorn/ubuntu_python_mysql:latest

# https://vitux.com/how-to-install-and-configure-mysql-in-ubuntu-18-04-lts/

RUN apt-get update -y && \
    apt-get upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y -q --no-install-recommends \
    apt-transport-https \
    build-essential \
    ca-certificates \
    aptitude \
    net-tools \
    curl \
    zsh \
    nano \
    htop \
    libssl-dev \
    wget

RUN export DEBIAN_FRONTEND=noninteractive && \
    export TZ=US/Mountain && \
    ln -s /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt update -y && \
    apt-get upgrade -y && \
    apt install make libghc-zlib-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip -y --fix-missing && \
    cd /tmp && \
    curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.29.2.tar.gz && \
    tar -zxf git.tar.gz && \
    cd git-* && \
    NPROC=$(nproc) && \
    make -j $NPROC && \
    make prefix=/usr/local all && \
    make prefix=/usr/local install && \
    git config --global user.email "raychorn@gmail.com" && \
    git config --global user.name "Ray C Horn" 

RUN apt install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y --fix-missing && \
    cd /tmp && \
    wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz && \
    tar -xf Python-3.9.0.tgz && \
    cd Python-3.9.0 && \
    ./configure --enable-optimizations && \
    NPROC=$(nproc) && \
    make -j $NPROC && \
    make altinstall

RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && \
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

