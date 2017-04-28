#!/bin/bash

for i in *.flac ; do
    ffmpeg -i "$i" -acodec libmp3lame "$(basename "${i/.flac}").mp3"
done
