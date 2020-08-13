#! /usr/bin/env sh

if test -f ./main; then
  gpg --sign ./main
  sha256sum ./main.gpg > SHA256sums.txt
else
  make build
  ./release.sh
fi
