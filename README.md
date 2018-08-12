Simple Image Gallery
====================

A simple way photo gallery container using
[fgallery](https://github.com/wavexx/fgallery).

For usage with ansible, you can add the environment variable opts with the command line parameter you desire,
e.g.

    [...]
    env:
      GALLERY_TITLE: My kitten pics
      opts: -d
    [...]

to disable a zip-file with all images.


Usage
-----

At its core, this uses the [nginx container](https://hub.docker.com/\_/nginx/).

Images to put in the gallery should be in the `/images` directory.

    docker run \
      --rm \
      -v ~/Downloads/kittens:/images:ro \
      -p 80:80 \
      -e "GALLERY_TITLE=My Photos" \
      gmaniac/image-gallery
