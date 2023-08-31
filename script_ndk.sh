#!/bin/bash

KBUILD_BUILD_USER=TP_KERNEL
KBUILD_BUILD_HOST=TP_KERNEL

make O=out ARCH=arm64 tp-perf_defconfig

# PATH="${HOME}/Downloads/clang-r487747/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-x86_64_aarch64-linux-gnu/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-aarch64_arm-linux-gnueabihf/bin:${PATH}" 

PATH="${HOME}/Downloads/clang-r487747/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-x86_64_aarch64-linux-gnu/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-aarch64_arm-linux-gnueabihf/bin:${PATH}" 

# PATH="${HOME}/Downloads/android-ndk-r25c-linux/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-x86_64_aarch64-linux-gnu/bin:${HOME}/Desktop/4.19.292/android/gcc-linaro-14.0.0-2023.06-aarch64_arm-linux-gnueabihf/bin:${PATH}" 



# make HOSTCC=clang 
# CC=clang 
# HOSTCXX=clang++ 
# CXX=clang++ 
# AS=llvm-as 
# LD=ld.lld 
# AR=llvm-ar 
# NM=llvm-nm 
# STRIP=llvm-strip 
# OBJCOPY=llvm-objcopy 
# OBJDUMP=llvm-objdump 
# ARCH=arm64 SUBARCH=arm64 
# CLANG_TRIPLE=aarch64-linux-gnu- 
# CROSS_COMPILE=aarch64-linux-gnu- 
# CROSS_COMPILE_ARM32=arm-linux-gnueabihf- 
# O=out

make                  O=out \
                      ARCH=arm64 \
                      SUBARCH=arm64 \
                      CC=clang \
                      CXX=clang++ \
                      AS=llvm-as \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabihf- \
                      AR=llvm-ar \
                      LLVM=1 \
                      LLVM_IAS=1 \
                      OBJCOPY=llvm-objcopy \
                      OBJDUMP=llvm-objdump \
                      STRIP=llvm-strip \
                      LD=ld.lld \
                      NM=llvm-nm \
                      STRIP=llvm-strip \
                      HOSTCC=clang \
                      HOSTCXX=clang++ \
                      -j24