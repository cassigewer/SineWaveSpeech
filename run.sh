#!/bin/bash

#if ! [ -x "$(command -v praat)" ]; then
#  echo 'Error: praat is not installed.' >&2
#  exit 1
#fi

if ! [ -f "input/sound.wav" ]; then
  echo 'Error: Source wav not present.' >&2
  exit 1
fi

/Applications/Praat.app/Contents/MacOS/Praat --run src/praat.script 1 1 1 1 1 0 50 1 20 1
