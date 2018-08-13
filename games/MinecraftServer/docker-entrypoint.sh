#!/bin/sh
set -e

if [ ! -f "minecraft_server.$MC_VERSION.jar" ]; then
    row=$(grep "^$MC_VERSION " /opt/mc/list || true)
    if [ "x$row" = "x" ]; then
        echo "Unable to determine Minecraft version." >&2
        exit 1
    else
        curl -o "minecraft_server.$MC_VERSION.jar" "$(echo "$row" | cut -f 2 -d " ")"
    fi
fi

if [ ! -f eula.txt ]; then
    echo "eula=true" > eula.txt
fi

if [ ! -f server.properties ]; then
    touch server.properties
fi

(env; echo "$@") | grep "^MC_" | grep -v "^MC_VERSION=" | sed -e "s|^MC_||" | while read row; do
    key="$(echo "$row" | cut -f 1 -d "=" | tr "A-Z" "a-z" | tr _ -)"
    grep -v "^$key=" server.properties > server.properties~ || true
    echo "$key=$(echo "$row" | cut -f 2 -d "=")" >> server.properties~
    mv server.properties~ server.properties
done

exec java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -jar "minecraft_server.$MC_VERSION.jar" nogui
