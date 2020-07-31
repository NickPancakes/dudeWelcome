#!/bin/bash
source ./yaml.sh
create_variables packmaker.yml
echo "Building dudeWelcome Client v$version for Minecraft $minecraft and Forge $forge"
rm -rf ./build/curseforge/
rm -rf ./build/release/
packmaker updatedb
packmaker lock
packmaker build-curseforge
mv "./build/release/dudeWelcome-$version.zip" "dudeWelcome-client-$version-$minecraft-$forge.zip"
