#!/usr/bin/env bash

microsec_length=$(playerctl metadata mpris:length)
sec_length=${microsec_length::-6}
sec_position=$(playerctl position)

position=$(date -d@$sec_position -u +%M:%S)
length=$(date -d@$sec_length -u +%M:%S)

echo "$(playerctl metadata xesam:title) $position/$length"

