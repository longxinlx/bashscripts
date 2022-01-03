#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
path=$1
files=$(ls $path)
for fullname in $files
do
    filename=$(basename -- "$fullname")
    extension="${filename##*.}"
    filename="${filename%.*}"
if [ "$extension" == "flv" -o "$extension" == "mp4" ] ; then
       /Users/yiming/longxinlx/ffmpeg/bin/ffmpeg -i $fullname -f mp3 -vn $filename".mp3"
else
    echo "不是视频文件."
fi
done
IFS=$SAVEIFS
