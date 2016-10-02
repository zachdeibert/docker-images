# Docker Images
This repository contains various `Dockerfile`s that will build many useful images.
All of these images are also available on [DockerHub](https://hub.docker.com/r/zachdeibert/).

## Running GUI Containers
The GUI containers (in `IDEs/` and `games/`) will run on a local X11 server or a remote X11 server.
To run a GUI container on a local X11 server, use the following:
```bash
docker run -v /tmp:/tmp zachdeibert/container-name $DISPLAY $USER
```
To run a GUI container on a remote X11 server, use the following:
```bash
docker run zachdeibert/container-name $DISPLAY $USER
```

## Repository Structure
* `IDEs/` - These are IDEs that help with development (needs to run with GUI)
    * `IDEs/AndroidStudio/` - The [Android Studio](https://developer.android.com/studio/index.html) IDE
    * `IDEs/CodeBlocks/` - The ([Code::Blocks IDE](http://www.codeblocks.org/)) for C++
    * `IDEs/EclipseJava/` - The [Eclipse IDE for Java Developers](http://www.eclipse.org/)
    * `IDEs/Monodevelop/` - The [Monodevelop IDE](http://www.monodevelop.com/) for C# development
    * `IDEs/QtCreator/` - The [QT Creator IDE](https://www.qt.io/ide/) for C++
* `games/` - These are games (needs to run with GUI and are slower due to an OpenGL problem)
    * `games/Technic/` - The [Technic Launcher](http://www.technicpack.net/)
* `software/` - Other development software (CLI only)
    * `software/autotools/` - Contains all of the autotools programs (`autoconf`, `automake`, `libtool`, etc.)
    * `software/debian+mono-dev/` - Contains the tools needed to build mono programs and package Debian packages (`.deb`s)
    * `software/debian-dev/` - Contains the tools needed to build Debian packages (`.deb`s)
    * `software/electron/` - Contains the tools needed to build and package [Electron](http://electron.atom.io/) apps
    * `software/electron/make/` - Contains all of the tools from `software/electron/` and has Make
    * `software/gradle/` - Contains all of the tools needed to build Gradle projects
    * `software/jekyll/` - Contains the tools needed to build Jekyll sites and has Make
    * `software/make/` - Contains all of the tools needed for building Docker images with Make
    * `software/mono/` - A version of the [Library `mono`](https://hub.docker.com/_/mono/) image with an updated OS
    * `software/mono+make/` - Contains all of the tools needed for building Mono projects with Make
    * `software/nsis/` - Contains the tools needed to build a NSIS installer
    * `software/typescript/` - Contains the typescript compiler

## [Need more software or other versions?](https://github.com/zachdeibert/docker-images/issues/new)
