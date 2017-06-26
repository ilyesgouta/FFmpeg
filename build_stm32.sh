#!/bin/sh

export CFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections"
export ASFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections"
export LDFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections -nostartfiles"

[ $1 == "configure" ] && ./configure \
    --enable-static \
    --disable-nonfree \
    --disable-gpl \
    --disable-version3 \
    --disable-shared \
    --prefix=$PWD/stm32-install \
    --disable-all \
    --enable-small \
    --enable-avcodec \
    --enable-avformat \
    --enable-avfilter \
    --enable-dct \
    --enable-dwt \
    --enable-lsp \
    --enable-lzo \
    --enable-mdct \
    --enable-rdft \
    --enable-fft \
    --enable-faan \
    --enable-pixelutils \
    --enable-demuxer=mjpeg,avi,wav,pcm_u8,pcm_u16le \
    --enable-parser=mjpeg \
    --enable-decoder=mjpeg,pcm_u8,pcm_u16le \
    --enable-protocol=data,file \
    --enable-encoder=mpeg1video \
    --enable-muxer=mpeg1video,mpeg1system \
    --enable-cross-compile \
    --cpu=armv7e-m \
    --arch=armv7e-m \
    --disable-armv5te \
    --disable-armv6 \
    --disable-armv6t2 \
    --disable-vfp \
    --target-os=gnu \
    --cc=arm-none-eabi-gcc \
    --cxx=arm-none-eabi-g++ \
    --ld=arm-none-eabi-gcc \
    --as=arm-none-eabi-gcc \
    --nm=arm-none-eabi-nm \
    --ar=arm-none-eabi-ar \
    --host-cc=gcc \
    --host-os=linux

make; make install
