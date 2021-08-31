#!/usr/bin/env bash

# terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bottom >>/tmp/polybar2.log 2>&1 & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload monitors &
  done
else
  polybar --reload monitors &
fi

echo "Bars launched..."
