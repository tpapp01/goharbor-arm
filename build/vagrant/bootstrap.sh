#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail


rm /etc/machine-id
rm /var/lib/dbus/machine-id
dbus-uuidgen --ensure
systemd-machine-id-setup
#zypper clean
#zypper clean
set +o errexit
apt clean
apt update
apt upgrade -y
#zypper ref
#zypper patch --updatestack-only -y
#zypper patch --with-update --with-interactive --auto-agree-with-licenses --auto-agree-with-product-licenses -y
set -o errexit
#zypper in -y docker
