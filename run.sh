# !/usr/bin/env bash

odin-nightly build \
    src \
    -collection:packages=packages \
    -extra-linker-flags:"$(python3.9-config --ldflags)" \
    -out:dist/main

./dist/main test/hello.py