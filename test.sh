#!/usr/bin/env sh

# output node and npm versions
echo node: $(node --version)
echo npm: $(npm --version)

# source in some NEW_RELIC_* keys
. ./env.sh

echo
echo 'with NEW_RELIC_LICENSE_KEY unset, the promisified `request.defaults` is a function'
echo
node index.js

echo
echo 'with NEW_RELIC_LICENSE_KEY set, the promisified `request.defaults` is undefined'
echo
# Substitute a valid New Relic key if you want to see if that makes a difference. It doesn't.
export NEW_RELIC_LICENSE_KEY=deadbeefdeadbeefdeadbeefdeadbeef
node index.js

echo
