#!/bin/bash
# This script contains commands that should be executed first 
# time the containers goes up or after upgrades to update database

# example command: moosh config-set name value <plugin>

# Plugin list with [--release <build version>] if different from last
# hack: last one does never get active, so install one more


echo >&2 "Downloading plugin list..."
moosh plugin-list >/dev/null
echo >&2 "Plugin list downloaded!"				


echo >&2 "Installing plugins..."
moosh plugin-install -d --release 2019051505 theme_snap
moosh plugin-install -d --release 2019042008 mod_bigbluebuttonbn
moosh plugin-install -d --release 2020020500 mod_hvp
moosh plugin-install -d --release 2020043003 block_xp
moosh plugin-install -d availability_xp 
echo >&2 "Plugins installed!"

# moosh config-set theme ${DEFAULT_THEME}
# moosh config-set bigbluebuttonbn_server_url ${BBB_SERVER_URL}
# moosh config-set bigbluebuttonbn_shared_secret ${BBB_SECRET}