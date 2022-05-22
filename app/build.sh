#!/bin/bash -ex 

SIDE=$1

rm -rf build/

west build -d build/$SIDE -b nice_nano_v2 -- -DSHIELD=corne_$SIDE

cp -v \
  /home/urecho/Workspace/urecho/zmk/app/build/$SIDE/zephyr/zmk.uf2 \
  /run/media/urecho/NICENANO/



exit 0

west build -d build/left -b nice_nano_v2 -- -DSHIELD=corne_left
west build -d build/right -b nice_nano_v2 -- -DSHIELD=corne_right


cp -v \
  /home/urecho/Workspace/urecho/zmk/app/build/left/zephyr/zmk.uf2 \
  /run/media/urecho/NICENANO/

cp -v \
  /home/urecho/Workspace/urecho/zmk/app/build/right/zephyr/zmk.uf2 \
  /run/media/urecho/NICENANO/

