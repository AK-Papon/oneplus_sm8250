#!/bin/bash

make O=out ARCH=arm64 tp-perf_defconfig

PATH="$HOME/Linux_Kernel/gcc-arm64-gcc-master/bin:$PATH" \

make                  O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CROSS_COMPILE=aarch64-elf- \
                      AR=llvm-ar \
                      LLVM=1 \
                      LLVM_IAS=1 \
                      OBJCOPY=llvm-objcopy \
                      OBJDUMP=llvm-objdump \
                      STRIP=llvm-strip \
                      NM=llvm-nm \
                      STRIP=llvm-strip \
                      READELF=llvm-readelf \
                      HOSTCC=clang \
                      HOSTCXX=clang++ \
                      HOSTAR=llvm-ar \
                      HOSTLD=ld.lld \
                      -j24
