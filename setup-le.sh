#!/usr/bin/env bash
set -o nounset -o errexit

source config.sh

apt-get install letsencrypt -y

ipa-cacert-manage install "$WORKDIR/ca/DSTRootCAX3.pem" -n DSTRootCAX3 -t C,,
ipa-certupdate

ipa-cacert-manage install "$WORKDIR/ca/LetsEncryptAuthorityX3.pem" -n letsencryptx3 -t C,,
ipa-certupdate

"$(dirname "$0")/renew-le.sh" "--first-time"
