#! /usr/bin/env sh

if test -f ./main; then
  sha256sum ./main > SHA256sums.txt
  gpg --sign ./main
else
  make build
  ./release.sh
fi
