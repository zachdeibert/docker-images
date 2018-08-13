# Minecraft Server

## Running

```bash
docker run -ite MC_VERSION=1.13 -p 25565:25565 zachdeibert/minecraft-server
```

## Changing settings

Any setting in the `server.properties` file can be changed by creating an environmental variable called `MC_` followed by the setting name in all upper-case with the underscores replaced by hyphens.
For example, this sets a level seed:

```bash
docker run -ite MC_VERSION=1.13 -e MC_LEVEL_SEED=docker -p 25565:25565 zachdeibert/minecraft-server
```
