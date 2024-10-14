# FFmpeg Installer

A Linux Shell Script for compiling, installing FFmpeg in CentOS This script is based on the [FFmpeg guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Centos).

## Supported Extentions
- gnutls
- ladspa
- libass
- libdc1394
- libfdk-aac
- libgsm
- libmp3lame
- libopencore-amrnb 
- libopencore-amrwb 
- libvo-amrwbenc
- libopenjpeg
- libopus
- libpulse
- libsoxr
- libspeex
- libtheora
- libv4l2
- libvpx
- libx264
- libwebp


## Dependency extension installation 
Possible prompts for missing dependencies during installation, I installed it using the following command
```sh
# gnutls
yum install pkgconfig gnutls-devel
pkg-config --libs gnutls
yum install -y gnutls-devel gnutls-dane gnutls-c++ gnutls
yum install gnutls-utils
```
```sh
# ladspa
yum install glibc-devel
yum install ladspa-sdk
yum install ladspa-devel
```
```sh
# libass
yum install -y libass*
```
```sh
# libdc1394
yum install libdc1394*
```
```sh
# libfdk-aac
yum search libfdk
yum search aac
yum install -y fdk-aac*
```
```sh
# libgsm
yum install gsm-devel.x86_64
```
```sh
# libmp3lame
yum install lame*
```
```sh
# libopencore-amrnb 
# libopencore-amrwb 
yum install libopencore-amrnb
yum install search opencore-amrnb
yum install search open-amr
yum install search opencore-amr
yum install -y opencore-amr-*
```
```sh
# libopenjpeg
yum install -y openjpeg2 
yum install -y openjpeg2-devel openjpeg2-tools
yum install -y openjpeg-lib
```
```sh
# libopus
yum install opus-*
```
```sh
# libpulse
yum install unistring-dev
yum install libunistring libunistring-devel
yum install -y pulseaudio-libs-devel
```
```sh
# libsoxr
yum -y install soxr-devel
```
```sh
# libspeex
yum -y install speex-devel
```
```sh
# libtheora
yum install -y libtheora-devel
```
```sh
# libv4l2
yum install -y libv4l-devel
```
```sh
# libvo-amrwbenc
wget https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/vo-amrwbenc-0.1.3.tar.gz
curl -O https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/vo-amrwbenc-0.1.3.tar.gz
tar xf vo-amrwbenc-0.1.3.tar.gz
cd ./vo-amrwbenc-0.1.3
./configure && make -j`nproc`&& make install -j`nproc`
```
```sh
# libvpx
# choose vertion from here: https://chromium.googlesource.com/webm/libvpx/+refs
# i have chosen version v1.14.1
tar -xzvf ./libvpx-1.14.1.tar.gz
cd ./libvpx-1.14.1
./configure --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm
make && make install
```
```sh
# libx264
curl -O http://ftp.videolan.org/pub/videolan/x264/snapshots/x264-snapshot-20191217-2245.tar.bz2
tar -xf ./x264-snapshot-20191217-2245.tar.bz2
cd ./x264-snapshot-20191217-2245/
./configure --enable-shared && make -j`nproc`&& make install -j`nproc`
ln -s /usr/local/lib/libx264.so.157 /usr/lib/libx264.so.157
```
```sh
# libwebp
wget https://github.com/webmproject/libwebp/archive/refs/tags/v1.3.2.tar.gz 
mkdir libwebp-v1.3.2
tar -xzvf ./v1.3.2.tar.gz -C libwebp-v1.3.2
cd ./libwebp-1.3.2/
./autogen.sh
./configure
make -j4
make install

ln -s /usr/lib/libwebpmux.a /usr/local/lib/libwebpmux.a
ln -s /usr/local/lib/libwebpmux.a /usr/lib/libwebpmux.a
ln -s /usr/local/lib/libwebpmux.la /usr/lib/libwebpmux.la
ln -s /usr/local/lib/libwebpmux.so /usr/lib/libwebpmux.so
ln -s /usr/local/lib/libwebpmux.so.3 /usr/lib/libwebpmux.so.3
ln -s /usr/local/lib/libwebpmux.so.3.0.13 /usr/lib/libwebpmux.so.3.0.13
```


## Installation

````sh
sh install_ffmpeg.sh
````

## License

A Linux Shell Script for compiling and installing FFmpeg in CentOS.

Copyright (C) 2017 Hamed Ramezanian Nik

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.