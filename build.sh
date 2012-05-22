#!/bin/sh

DEST=`pwd`
cd "$HOME/rpmbuild"
rpmbuild -bb SPECS/msttcorefonts*.spec
cp RPMS/noarch/msttcorefonts*.rpm $DEST
cd -
