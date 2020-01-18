#!/usr/bin/env bash

echo "$0: Refreshing existing Chromium instance(s)"
DISPLAY=:0 xdotool search --onlyvisible --class "chromium" key 'ctrl+r'

