#!/usr/local/bin/dumb-init /bin/sh
set -e

# Start gotty
/usr/local/bin/gotty -p 8000 /bin/bash -l &


# Start Jenkins
/usr/local/bin/jenkins.sh

# Start Dropbear SSH server
dropbear -s -g -R -F -E >/dropbear.log

