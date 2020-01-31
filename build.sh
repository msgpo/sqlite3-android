#!/usr/bin/env bash
#
# Copyright (C) 2019 TheHitMan7 (Kartik Verma)
#
#  This shell script is a wrapper to launch the NDK build from the
#  command-line inside an application project path.
#
#  Typical usage is:
#
#     cd $PROJECT_PATH
#     ndk-build
#
#  Assuming that the Android NDK root path is in your PATH. However,
#  you can also invoke it directly as:
#
#     $NDK_ROOT/ndk-build
#
#  This really is a tiny wrapper around GNU Make.
#
#
# Ensure we get the full path of this script's directory
# this is needed if the caller uses the -C <path> GNU Make
# option, as in:
#
#    cd ndk
#    ./ndk-build -C <project-path>
#
#
# https://developer.android.com/ndk/guides/application_mk
#

# NDK
NDK=/path/to/android-ndk

# Compile
$NDK/ndk-build
