#!/usr/bin/env bash
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c /home/bvady/.config/polybar/custom custom &

echo "Bar started..."

sudo rmmod pcspkr
