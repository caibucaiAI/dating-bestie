#!/bin/sh
set -eu
cd "$(dirname "$0")"
mkdir -p .build
CLANG_MODULE_CACHE_PATH="$(pwd)/.build/module-cache" clang -fobjc-arc -framework AppKit render.m -o .build/render
.build/render "${1:-content.json}" assets/caicai-star-lamp.png "${2:-samples/caicai-light-card.png}"
