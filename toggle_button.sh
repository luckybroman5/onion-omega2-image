#!/bin/bash

# Reads GPIO 0 (Where the button is pressed that defaults to high)
# If it detects a change from the original state, it will fire pin 1
# to be high

fast-gpio set-output 1

CURRENT_STATE=$(sh read_gpio_0)
TOGGLE=0

while [ 1 = 1 ]
do
  READ=$(sh read_gpio_0)
  if [ "$READ" != "$CURRENT_STATE" ]
  then
      echo DETECTED CHANGE!!! $READ $CURRENT_STATE
      if [ $TOGGLE = 0 ]
      then
         TOGGLE=1
      else
         TOGGLE=0
      fi
      CURRENT_STATE=$READ
      fast-gpio set 1 $TOGGLE
  fi
done
