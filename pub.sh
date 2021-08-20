#!/bin/sh
cd `dirname $0`
hexo cl
git add .
git commit -m "Site Update"
git push -u origin main
hexo d
