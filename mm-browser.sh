#!/usr/bin/env bash

set -euo pipefail

echo -n "Waiting until MagicMirror server becomes available at $URL"
until $(curl --output /dev/null --silent --head --fail $URL); do
    echo -n '.'
    sleep 5
done
echo
echo "Starting Chromium in kiosk mode"
chromium-browser -noerrdialogs -kiosk -start_maximized --disable-infobars --app=$URL
