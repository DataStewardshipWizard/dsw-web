#!/bin/bash

set -e

rm -rf ./dist
npx webpack --config webpack.config.js
sed -E -i.bak 's/"main.css"/"main.css?'`git rev-parse HEAD`'"/g' dist/*.html
rm dist/*.bak
