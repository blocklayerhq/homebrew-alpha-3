#!/bin/bash

set -ex

cd "$(dirname "$0")/.."

binary="$(mktemp /tmp/bl-cli-XXXXXX)"
curl -o "$binary" "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/latest/bl-Darwin-x86_64"
chmod +x "$binary"

version="$("$binary" version)"
digest="$(shasum -a 256 "$binary" | cut -d' ' -f1)"

sed -i '' "s/version \".*/version \"${version}\"/g" bl.rb
sed -i '' "s/sha256 \".*/sha256 \"${digest}\"/g" bl.rb

rm -f "$binary"