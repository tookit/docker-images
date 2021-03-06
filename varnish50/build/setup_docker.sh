#!/bin/bash

set -x
set -e


apt-get update

apt-get install -y --no-install-recommends varnish varnish-modules


cp -frv /build/files/* /


# Clean up APT when done.
source /usr/local/build_scripts/cleanup_apt.sh
rm -rf /tmp/*

