#!/bin/bash

choice=$(printf "⏯ Play/Pause\n⏭ Next\n⏮ Previous\n⏹ Stop\n🔊 Volume +\n🔉 Volume -" | rofi -dmenu -p "Player")

case "$choice" in
  "⏯ Play/Pause") playerctl play-pause ;;
  "⏭ Next") playerctl next ;;
  "⏮ Previous") playerctl previous ;;
  "⏹ Stop") playerctl stop ;;
  "🔊 Volume +") playerctl volume 0.05+ ;;
  "🔉 Volume -") playerctl volume 0.05- ;;
esac
