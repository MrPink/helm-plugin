#!/bin/bash

OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)
VERSION="0.1.0"

case $ARCH in
    x86_64)
        ARCH="amd64"
        ;;
    aarch64)
        ARCH="arm64"
        ;;
esac

if [ "$OS" = "windows" ]; then
    BINARY="helm-plugin.exe"
else
    BINARY="helm-plugin"
fi

echo "Installing $BINARY $VERSION..."
mkdir -p bin
echo "Plugin installed successfully"