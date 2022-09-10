#!/bin/sh

cd frontend
yarn build
mv -v ./dist/* ../public/