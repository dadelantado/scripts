#!/usr/bin/env bash
# Cloned from https://evanhahn.com/scripts-i-wrote-that-i-use-all-the-time/
set -e
set -u
set -o pipefail

if [ "$1" == lofi ]; then
  url='https://live.hunter.fm/lofi_low'
elif [ "$1" == trance ]; then
  url='http://www.hbr1.com/playlist/trance.aac.m3u'
elif [ "$1" == trance2 ]; then
  url='http://www.hbr1.com/playlist/tronic.aac.m3u'
elif [ "$1" == salsa ]; then
  url='https://latinasalsa.ice.infomaniak.ch/latinasalsa.mp3'
elif [ "$1" == kfai ]; then
  url='https://kfai.broadcasttool.stream/kfai-1'
else
  echo "don't know $1" 1>&2
  exit 1
fi

exec mpv "$url"
