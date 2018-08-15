#!/bin/sh
set -e

server_fname=""
server_url=""

case "$MC_FLAVOR" in
    "spigot")
        server_fname="spigot-$MC_VERSION.jar"
        server_url="https://cdn.getbukkit.org/spigot/spigot-$MC_VERSION.jar"
        ;;
    "bukkit")
        server_fname="craftbukkit-$MC_VERSION.jar"
        server_url="https://cdn.getbukkit.org/craftbukkit/craftbukkit-$MC_VERSION.jar"
        ;;
    "")
        server_fname="minecraft_server.$MC_VERSION.jar"
        server_url="$(grep "^$MC_VERSION " /mc_list | cut -f 2 -d " ")"
        ;;
    *)
        echo "Unable to determine Minecraft flavor." >&2
        exit 1
esac

if [ ! -f "$server_fname" ]; then
    if [ "x$server_url" = "x" ]; then
        echo "Unable to determine Minecraft version." >&2
        exit 1
    else
        curl "$server_url" -o "$server_fname"
    fi
fi

if [ ! -f eula.txt ]; then
    echo "eula=true" > eula.txt
fi

if [ ! -f server.properties ]; then
    touch server.properties
fi

(env; echo "$@") | grep "^MC_" | grep -v "^MC_VERSION=" | grep -v "^MC_FLAVOR=" | sed -e "s|^MC_||" | while read row; do
    key="$(echo "$row" | cut -f 1 -d "=" | tr "A-Z" "a-z" | tr _ -)"
    grep -v "^$key=" server.properties > server.properties~ || true
    echo "$key=$(echo "$row" | cut -f 2 -d "=")" >> server.properties~
    mv server.properties~ server.properties
done

exec java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -jar "$server_fname" nogui
