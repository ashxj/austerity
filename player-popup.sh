#!/bin/bash

ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

MENU="▶ Play / Pause
⏭ Next
⏮ Previous
⏹ Stop

🔊 Volume +
🔉 Volume -"

CHOICE=$(echo -e "$MENU" | wofi --dmenu --prompt "🎵 $ARTIST — $TITLE")

case "$CHOICE" in
  "▶ Play / Pause") playerctl play-pause ;;
  "⏭ Next") playerctl next ;;
  "⏮ Previous") playerctl previous ;;
  "⏹ Stop") playerctl stop ;;
  "🔊 Volume +") playerctl volume 0.05+ ;;
  "🔉 Volume -") playerctl volume 0.05- ;;
esac
