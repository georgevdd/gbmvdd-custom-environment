#! /bin/bash
MODE=$(pmset -g | grep hibernatemode)
echo Current hibernate mode: $MODE
sudo pmset -a hibernatemode 5
MODE=$(pmset -g | grep hibernatemode)
echo New mode: $MODE
