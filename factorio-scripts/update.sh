#!/bin/bash

download_url=$(curl -Is https://www.factorio.com/get-download/latest/headless/linux64 | grep -i location | cut -d' ' -f2 | tr -d '\r\n')

filename=$(echo "$download_url" | awk -F'/' '{print $NF}' | cut -d'?' -f1 | tr -d '\r\n')

xz_decompressed_name=$(echo "$filename" | awk -F'.xz' '{print $1}')

if test -e "$xz_decompressed_name"; then
    echo "已经是最新版，退出中。。。"
    exit 0
else
    echo "下载最新版本：$filename"
fi

curl -L --output "$filename" "$download_url"

xz -d "$filename"

tar xvf "$xz_decompressed_name" -C ~/
