#!/bin/bash
# https://rg3.github.io/youtube-dl/download.html
youtube-dl \
--ignore-config \
--format 'bestaudio' \
--output '~/Music/Youtube/%(title)s.%(ext)s' \
--extract-audio \
--prefer-ffmpeg \
--audio-format mp3 \
--audio-quality 0 \
--embed-thumbnail \
$1
