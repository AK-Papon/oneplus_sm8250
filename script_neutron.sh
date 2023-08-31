#!/bin/bash

make O=out ARCH=arm64 tp-perf_defconfig

PATH="$HOME/Desktop/Linux_Kernel/neutron/bin:$PATH" \

make                  O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
                      AR=llvm-ar \
                      LLVM=1 \
                      LLVM_IAS=1 \
                      OBJCOPY=llvm-objcopy \
                      OBJDUMP=llvm-objdump \
                      STRIP=llvm-strip \
                      LD=ld.lld \
                      LLVM_BOLT=1 \
                      NM=llvm-nm \
                      STRIP=llvm-strip \
                      READELF=llvm-readelf \
                      HOSTCC=clang \
                      HOSTCXX=clang++ \
                      HOSTAR=llvm-ar \
                      HOSTLD=ld.lld \
                      -j24