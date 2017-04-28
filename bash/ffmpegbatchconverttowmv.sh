#!/bin/bash
for i in *.mp4 ; do
ffmpeg -i "$i" -c:v wmv2 -b:v 1024k -c:a wmav2 -b:a 192k  "$(basename "${i/.mp4}").wmv"
done

