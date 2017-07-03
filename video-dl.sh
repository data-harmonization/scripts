#!/bin/bash
# https://rg3.github.io/youtube-dl/download.html
youtube-dl \
--ignore-config \
--output '~/Movies/Youtube/%(title)s.%(ext)s' \
-f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \
$1
