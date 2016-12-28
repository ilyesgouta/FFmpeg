#!/bin/sh

export CFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections"
export ASFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections"
export LDFLAGS="-mthumb -mtune=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-exceptions -fno-strict-aliasing -fdata-sections -ffunction-sections -nostartfiles"

[ $1 == "configure" ] && ./configure \
    --enable-static \
    --disable-shared \
    --prefix=$PWD/stm32-install \
    --disable-gpl \
    --disable-version3 \
    --disable-nonfree \
    --disable-runtime-cpudetect \
    --disable-programs \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --enable-doc \
    --enable-htmlpages \
    --disable-avdevice \
    --enable-avcodec \
    --enable-avformat \
    --disable-swresample \
    --disable-swscale \
    --disable-postproc \
    --disable-avfilter \
    --disable-avresample \
    --disable-pthreads \
    --disable-w32threads \
    --disable-os2threads \
    --disable-network \
    --disable-dct \
    --disable-dwt \
    --disable-error-resilience \
    --disable-lsp \
    --disable-lzo \
    --disable-mdct \
    --disable-rdft \
    --disable-fft \
    --disable-faan \
    --disable-pixelutils \
    --disable-encoders \
    --disable-decoders \
    --disable-hwaccels \
    --disable-muxers \
    --disable-demuxers \
    --disable-parsers \
    --disable-bsfs \
    --disable-protocols \
    --disable-indevs \
    --disable-outdevs \
    --disable-devices \
    --disable-filters \
    --enable-demuxer=mjpeg,avi,wav,pcm_u8,pcm_u16le \
    --enable-parser=mjpeg \
    --enable-decoder=mjpeg,pcm_u8,pcm_u16le \
    --enable-protocol=data,file \
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
