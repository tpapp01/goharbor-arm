#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

apt install -y docker git make wget docker-compose
#curl -sl https://build.opensuse.org/projects/devel:kubic/public_key -o kubic-dev-key.pub
#rpm --import kubic-dev-key.pub
#zypper addrepo https://download.opensuse.org/repositories/devel:kubic/15.4/devel:kubic.repo
#zypper ref
mkdir -p $HOME/.docker/cli-plugins
curl -sL https://github.com/docker/buildx/releases/download/v0.8.2/buildx-v0.8.2.linux-amd64 -o $HOME/.docker/cli-plugins/docker-buildx
chmod +x ~/.docker/cli-plugins/docker-buildx
systemctl enable --now docker
docker run --privileged --rm tonistiigi/binfmt --install arm64,arm
#docker buildx create --platform linux/arm64 --name arm64
docker buildx ls
