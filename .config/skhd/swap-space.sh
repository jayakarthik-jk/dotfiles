#!/bin/bash

to=$1
current=$(yabai -m query --spaces | jq '[.[] | select(.["has-focus"] == true) | .index] | first')

if [ "$current" -gt "$to" ]; then
    adjust=1
else
    adjust=-1
fi

adjusted=$((to + adjust))

yabai -m space "$current" --move "$to"
yabai -m space "$adjusted" --move "$current"
# yabai -m space --focus $current
