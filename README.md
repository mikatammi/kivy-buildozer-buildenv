# kivy-buildozer-buildenv

Docker-based build environment for Kivy with Buildozer.

Usage
-----

    docker build -t kivy-buildozer-buildenv .
    docker run --rm -i -v YOUR_PROJECT_DIR:/kivyapp -t kivy-buildozer-buildenv /bin/bash
    
    cd /kivyapp
    buildozer android debug
