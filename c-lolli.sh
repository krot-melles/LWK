#!/bin/sh
# Kernel Compile Script for Lollipop

# Cleanup first
make clean && make mrproper;

# defconfig !
make lwkll_defconfig CROSS_COMPILE="../tc/bin/arm-architoolchain-linux-gnueabihf-";

# Compile Kernel
make -j4 ARCH=arm SUBARCH=arm CROSS_COMPILE="../tc/bin/arm-architoolchain-linux-gnueabihf-";

