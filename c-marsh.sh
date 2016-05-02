#!/bin/sh
# Kernel Compile Script for Lollipop

# Cleanup first
make clean && make mrproper;

# defconfig !
make lwkmm_defconfig;

# Compile Kernel
make -j5 ARCH=arm SUBARCH=arm CROSS_COMPILE="../sabermod/bin/arm-linux-androideabi-";
