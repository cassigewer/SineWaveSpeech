#!/bin/bash

#if ! [ -x "$(command -v arecord)" ]; then
#  echo 'Error: arecord is not installed. Maybe you not using linux, adam.' >&2
#  exit 1
#fi

#if ! [ -x "$(command -v aplay)" ]; then
#  echo 'Error: aplay is not installed. Maybe you not using linux, adam.' >&2
#  exit 1
#fi

#if ! [ -x "$(command -v praat)" ]; then
#  echo 'Error: praat is not installed.' >&2
#  exit 1
#fi

echo -e "1) Get ready to record a 5 second wav"
echo -e "   3..."
sleep 1
echo -e "   2..."
sleep 1
echo -e "   1..."
sleep 1
echo -e "   GO!"

#arecord -d5 input/sound.wav --linux
sox -d input/sound.wav

echo -e "   cool!\n"

./run.sh

#aplay output/sound.wav -- linux
afplay output/sound.wav
