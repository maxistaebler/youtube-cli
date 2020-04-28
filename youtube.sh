#!/bin/bash

read -p "Youtube Link: " msg
read -p "Format: " format
format=${format:-mp3}

youtube-dl --extract-audio --audio-format $format -o '/Users/maximilianstaebler/Music/youtube-dl/%(title)s.%(ext)s' $msg