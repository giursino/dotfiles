#!/bin/bash
# Utility to download music from Youtube and convert to MP3
# Require youtube-dl and ffmpeg
#
# (2025) Giuseppe Ursino
#

#set -x

SCRIPTNAME=`basename $0`
DATE=`date +%Y%m%d`

function usage() {

  echo "Utility to download music from Youtube and convert to MP3"
  echo "Require youtube-dl and ffmpeg"
	echo ""
	echo "Usage: $SCRIPTNAME <URL>"
	echo "Example: $SCRIPTNAME https://www.youtube.com/watch?v=H6O0Zl4SdNQ"
	exit 2
}

## PARSE OPTIONS
while getopts 'h' OPTION
do
	case $OPTION in
	
	h|?)	usage
		;;
	esac
done
shift $(($OPTIND - 1))


if [ "$1" == "" ]; then
	usage
fi

URL="$1"

if ! which youtube-dl > /dev/null; then
  echo "ERROR: youtube-dl not installed"
  exit 1
fi

if ! which ffmpeg > /dev/null; then
  echo "ERROR: youtube-dl not installed"
  exit 1
fi

## MAIN

echo ""
youtube-dl -x --audio-format mp3 $URL
echo ""
echo "done."
