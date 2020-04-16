#!/bin/bash

set -ex

cd "$(dirname "$0")/.."

git pull

binary="$(mktemp /tmp/bl-cli-XXXXXX)"
curl -o "$binary" "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/latest/bl-Darwin-x86_64"
chmod +x "$binary"

version="$("$binary" version)"
digest="$(shasum -a 256 "$binary" | cut -d' ' -f1)"

sed -i '' "s/version \".*/version \"${version}\"/g" bl.rb
sed -i '' "s/sha256 \".*/sha256 \"${digest}\"/g" bl.rb

rm -f "$binary"

if [ -n "$(git status -s . | grep -e '^ M bl.rb')" ] ; then
	git commit bl.rb -m "bump bl to $version"
	git push origin master
fi
