#!/bin/bash -ex 

# reset

SIDE=$1

rm -rf build/

west build -d build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset

cp -v \
  /home/urecho/Workspace/urecho/zmk/app/build/reset/zephyr/zmk.uf2 \
  /run/media/urecho/NICENANO/

