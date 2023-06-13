#!/usr/bin/bash

dpkg --add-architecture i386

apt update -y

apt install -y libc6:amd64 libc6:i386 libegl1:amd64 libegl1:i386 libgbm1:amd64 libgbm1:i386 libgl1:amd64 libgl1:i386 libgl-dev libgl-dev:i386


