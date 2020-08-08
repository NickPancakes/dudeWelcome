#!/bin/bash
source ./yaml.sh
create_variables packmaker.yml
echo "Building dudeWelcome Server v$version for Minecraft $minecraft and Forge $forge"
rm -rf ./build/server
packmaker updatedb
packmaker lock
packmaker build-server
# Remove client-side only mods
rm -rf ./build/server/mods/cherishedworlds-*
rm -rf ./build/server/mods/Controlling-*
rm -rf ./build/server/mods/enchantedbookredesign-*
rm -rf ./build/server/mods/itemzoom-*
rm -rf ./build/server/mods/overloadedarmorbar-*
rm -rf ./build/server/mods/PackMenu-*
rm -rf ./build/server/mods/ReAuth-*
7z a "dudeWelcome-server-$version-$minecraft-$forge.zip" "./build/server/*"
