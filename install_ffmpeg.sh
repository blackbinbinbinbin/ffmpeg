#!/bin/bash

yum install epel-release
yum install autoconf automake bzip2 cmake freetype-devel gcc gcc-c++ git libtool make mercurial pkgconfig zlib-devel
yum install nasm yasm libvpx-devel libvorbis-devel

mkdir -p ~/ffmpeg_sources
cd ./ffmpeg_sources
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg

cd ~/ffmpeg_sources/ffmpeg
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=/usr/lib/
./configure --prefix=/usr --bindir=/usr/bin --datadir=/usr/share/ffmpeg --incdir=/usr/include/ffmpeg --libdir=/usr/lib64 --mandir=/usr/share/man --arch=x86_64 --optflags='-O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector-strong --param=ssp-buffer-size=4 -grecord-gcc-switches -m64 -mtune=generic' --extra-ldflags='-Wl,-z,relro ' --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libvo-amrwbenc --enable-version3 --enable-bzlib --enable-gnutls --enable-ladspa --enable-libass --enable-libcdio --enable-libdc1394 --enable-libfdk-aac --enable-nonfree --disable-indev=jack --enable-libfreetype --enable-libgsm --enable-libmp3lame --enable-openal --enable-libopenjpeg --enable-libpulse  --enable-libsoxr --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libv4l2 --enable-libx264 --enable-libx265 --enable-libxvid --enable-avfilter --enable-postproc --enable-pthreads --disable-static --enable-shared --enable-gpl --enable-libvpx --enable-libwebp --disable-debug --disable-stripping --shlibdir=/usr/lib64 --enable-runtime-cpudetect
make
sudo make install