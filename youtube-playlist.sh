#!/bin/bash

read -p "Youtube Playlist Link: " msg
read -p "Format: " format
format=${format:-mp3}

# youtube-dl --extract-audio --audio-format $format -o '/Users/maximilianstaebler/Music/youtube-dl/%(title)s.%(ext)s' $msg

# youtube-dl -f FORMAT -ciw -o "%(title)s.%(ext)s" -v <url-of-playlist>

youtube-dl --extract-audio -i --audio-format $format -o '/Users/maximilianstaebler/Music/youtube-dl/%(title)s.%(ext)s' -v $msg