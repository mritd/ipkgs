#!/usr/bin/env bash

set -e

GREEN='\033[1;32m'
NC='\033[0m'

REALESES=$(curl -sL https://api.github.com/repos/go-task/task/releases/latest | jq -r '.assets[].browser_download_url' | grep tar.gz)

for r in ${REALESES}; do
    echo -e "${GREEN}[D]${NC} --> ${r}"
    curl -sSL ${r} -o dist/$(basename ${r}) --create-dirs
done
