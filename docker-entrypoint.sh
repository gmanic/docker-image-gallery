#!/bin/bash

set -euo pipefail

rm -rf /usr/share/nginx/html
if ! /fgallery/fgallery -v -j3 ${opts:-} /images /usr/share/nginx/html/ "${GALLERY_TITLE:-Gallery}"; then
  mkdir -p /usr/share/nginx/html
  cp -v /noimages.html /usr/share/nginx/html/index.html
fi

chmod a+rX /usr/share/nginx/html

exec nginx -g 'daemon off;'
