Simple Image Gallery
====================

A simple way photo gallery container using
[fgallery](https://github.com/wavexx/fgallery).

Usage
-----

At its core, this uses the [nginx container](https://hub.docker.com/\_/nginx/).

Images to put in the gallery should be in the `/images` directory.

    docker run \
      --rm \
      -v ~/Downloads/kittens:/images:ro \
      -p 80:80 \
      -e "GALLERY_TITLE=My Photos" \
      docwhat/image-gallery
