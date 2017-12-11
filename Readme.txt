### mTask repository.

This repository contains files for .msi creation from .wix xml files.

build.gradle file shows actions needed to perform in order to build .msi package.

gradle version: 3.5.1
groovy version: 2.4.10
JVM version:    1.8.0_151
docker version: 17.09.1-ce 

Executable build sequence: gradle build && gradle createExe
.msi build sequence: wine /home/wix/wix/candle.exe main.wxs && \
                     wine /home/wix/wix/light.exe -sval -cultures:en-US -ext WixUIExtension main.wixobj

Currently unimplemented part is automatic docker container launch via gradle build script to build .msi package.
To perform it manually launch docker container (from repository root): docker run -it -v $(pwd):/app/ justmoon/wix /bin/bash
After launching container cd to /app and execute .msi build sequence.

