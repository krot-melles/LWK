#!/bin/sh
# Kernel Compile Script for Lollipop

# Cleanup first
make clean && make mrproper;

# defconfig !
make lwkmm_defconfig CROSS_COMPILE="../tc/bin/arm-eabi-";

# Compile Kernel
make -j4 ARCH=arm SUBARCH=arm CROSS_COMPILE="../tc/bin/arm-eabi-";

