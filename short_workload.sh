#!/bin/bash

rm -r /dev/shm/short_bench_movie
mkdir /dev/shm/short_bench_movie

cp ~/FullHD.mp4 /dev/shm/short_bench_movie
cd /dev/shm/short_bench_movie

echo "10 seconds until stating Encode"
sleep 5
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 0
echo "0"

ffmpeg -i FullHD.mp4  -vcodec libx264 -t 00:01:00 short_x264.mp4
