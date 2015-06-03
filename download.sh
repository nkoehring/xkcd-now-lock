#!/bin/sh

# download AAALLL the xkcd now images

URL=http://imgs.xkcd.com/comics/now/

# wow, how awesome is curl?
curl -O "$URL"'[00-23]h[00-45:15]m.png'

echo "Download complete! Converting images now…"

for f in "??h??m.png"; do
    mogrify -transparent white -edge 1 -transparent black $f
done


