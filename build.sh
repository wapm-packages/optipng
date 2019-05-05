#!/bin/sh
AR=llvm-ar ARFLAGS=rc emconfigure ./configure

EXEEXT=.js LDFLAGS="-s WASM=1" emmake make
cp src/optipng/optipng.wasm ./
