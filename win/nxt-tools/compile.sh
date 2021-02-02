#!/bin/bash
# set -x
mkdir -p /tmp # for mingw32/MSys
SCRIPTDIR="$PWD" # $(dirname $(realpath ${BASH_SOURCE[0]}))
cygpath --help >/dev/null 2>&1 && SCRIPTDIR=$(cygpath -m $SCRIPTDIR) || :
SRCDIR="$2"
#make -C "$SRCDIR" SHELL=bash NXT_TOOLS_DIR_POSIX="$SCRIPTDIR" GNUARM_ROOT="$SCRIPTDIR/gnuarm" EnvironmentMessage
make -C "$SRCDIR" SHELL=bash NXT_TOOLS_DIR_POSIX="$SCRIPTDIR" clean
make -C "$SRCDIR" SHELL=bash GNUARM_ROOT="$SCRIPTDIR/gnuarm" NXT_TOOLS_DIR_POSIX="$SCRIPTDIR" all
echo "Finished compiling NXT program"
