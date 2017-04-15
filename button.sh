#!/bin/bash

# Reads GPIO 0 (Where the button is pressed that defaults to high)
# If it detects a change from the original state, it will fire pin 1
# to be high

INITIAL_STATE=$(sh read_gpio_0)

fast-gpio set-output 1

while [ 1 = 1 ]
do
  if [ "$(sh read_gpio_0)" = "$INITIAL_STATE" ]
  then
      fast-gpio set 1 0
  else
      fast-gpio set 1 1
  fi
done
