#!/bin/sh

set -e

rm -f ../netxms-release*.deb
dpkg-buildpackage -us -uc
dpkg-sig -s origin ../netxms-release_*_all.deb
