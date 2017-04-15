#!/bin/bash

# SETS ALL PINS TO GPIO

# Group i2c - i2c [gpio] 
# Group uart0 - [uart] gpio 
# Group uart1 - [uart] gpio 
# Group uart2 - [uart] gpio pwm 
# Group pwm0 - pwm [gpio] 
# Group pwm1 - pwm [gpio] 
# Group refclk - refclk [gpio] 
# Group spi_s - spi_s [gpio] 
# Group spi_cs1 - [spi_cs1] gpio refclk 
# Group i2s - i2s [gpio] pcm 
# Group ephy - [ephy] gpio 
# Group wled - wled [gpio]

omega2-ctrl gpiomux set i2c gpio
omega2-ctrl gpiomux set uart0 gpio
omega2-ctrl gpiomux set uart1 gpio
omega2-ctrl gpiomux set uart2 gpio
omega2-ctrl gpiomux set pwm0 gpio
omega2-ctrl gpiomux set pwm1 gpio
omega2-ctrl gpiomux set refclk gpio
omega2-ctrl gpiomux set spi_s gpio
omega2-ctrl gpiomux set spi_cs1 gpio
omega2-ctrl gpiomux set i2s gpio
omega2-ctrl gpiomux set ephy gpio
omega2-ctrl gpiomux set wled gpio
