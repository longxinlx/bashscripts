#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
path=$1
files=$(ls $path)
for fullname in $files
do
   filename=$(echo $fullname | cut -d . -f1)
   extension=$(echo $fullname | cut -d . -f2)
if [ "$extension" == "flv" -o "$extension" == "mp4" ] ; then
   /Users/yiming/longxinlx/ffmpeg-20200504-5767a2e-macos64-static/bin/ffmpeg -i $fullname -f mp3 -vn $filename".mp3"
else
    echo "不是视频文件."
fi
done
IFS=$SAVEIFS
