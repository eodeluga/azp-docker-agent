FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    curl \
    git \
    iputils-ping \
    jq \
    lsb-release \
    software-properties-common \
    libicu66

# Can be 'linux-x64', 'linux-arm64', 'linux-arm', 'rhel.6-x64'.
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN apt update && apt install -y docker-compose sshpass ssh

WORKDIR /azp
COPY ./start.sh ./azp/
