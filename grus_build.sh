#!/bin/bash
root=/home/mdomann/handy/build/rom/los-16
cd $root
# Anonymize Kernel metadata and build.prop
export KBUILD_BUILD_USER=android
export KBUILD_BUILD_HOST=localhost
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
export LC_ALL=C
export WITH_SU=true
source build/envsetup.sh
croot
brunch grus
