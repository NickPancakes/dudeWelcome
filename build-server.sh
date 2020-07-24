#!/bin/bash
source ./yaml.sh
create_variables packmaker.yml
echo "Building dudeWelcome Server v$version for Minecraft $minecraft and Forge $forge"
packmaker updatedb
packmaker lock
packmaker build-server
7z a "dudeWelcome-server-$version-$minecraft-$forge.zip" "./build/server/*"
