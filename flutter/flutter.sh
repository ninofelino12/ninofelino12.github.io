#!/usr/bin/env bash
echo "Instal flutter"
#wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.9-stable.tar.xz
tar xf flutter_linux_3.3.9-stable.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"
flutter precache
flutter doctor
export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"
echo $PATH
which flutter
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
