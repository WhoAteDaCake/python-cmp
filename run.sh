# !/usr/bin/env bash

odin-nightly build \
    src/main.odin \
    -collection:packages=packages \
    -extra-linker-flags:"$(python3.9-config --ldflags)" \
    -out:dist/main
