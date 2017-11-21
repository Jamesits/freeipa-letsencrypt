#!/usr/bin/env bash
set -o nounset -o errexit

# WORKDIR: set to the path of THIS script
# Should contain `ca` folder
WORKDIR="/root/ipa-le"

# EMAIL: Email used to sign Let's Encrypt
EMAIL=""