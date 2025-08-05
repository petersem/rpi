#!/bin/sh
# posterr full screen script
chromium-browser \
  https://posterr.nesretep.net \
  --autoplay-policy=no-user-gesture-required \
  --disable-component-update \
  --disable-composited-antialiasing \
  --disable-gpu-driver-bug-workarounds \
  --disable-infobars \
  --disable-low-res-tiling \
  --disable-pinch \
  --disable-session-crashed-bubble \
  --disable-smooth-scrolling \
  --enable-accelerated-video-decode \
  --enable-gpu-rasterization \
  --enable-oop-rasterization \
  --force-device-scale-factor=1 \
  --kiosk \
  --no-first-run \
  --noerrdialogs \
