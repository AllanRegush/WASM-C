#!/bin/bash

BUILD_DIR=./dist

if [ ! -d "$BUILD_DIR" ]
then
    mkdir "$BUILD_DIR"
fi
clang --target=wasm32 -c -O2 -flto -nostdlib -Wall -o dist/main.o src/main.c
wasm-ld-10 --no-entry --export-all --lto-O2 --allow-undefined -o dist/main.wasm dist/main.o
rm dist/main.o
cp src/index.html dist/
