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
if [ "$extension" == "apk" ] ; then
       /Users/yiming/Library/Android/sdk/platform-tools/adb install $fullname
else
    echo "不是视频文件."
fi
done
IFS=$SAVEIFS
