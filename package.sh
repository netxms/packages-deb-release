#!/bin/sh

set -e

rm -f ../netxms-release*.deb
dpkg-buildpackage -us -uc
debsign -e info@netxms.org
cp ../netxms-release_*_all.deb .

echo ALL DONE
