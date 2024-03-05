# Packaging scripts for NetXMS metapackage

This repository contains packaging scripts for NetXMS metapackage (netxms-release).
Server/Agent packages are available at https://github.com/netxms/packages-deb.

# Update keyring

```
gpg --export -a C72F55498B31A527181D91D9179C0A80CDFADDB1 | gpg --no-default-keyring --keyring gnupg-ring:(pwd)/src/netxms-keyring.gpg --import
```

# Sample build process

```
docker run -it --rm \
    -v (pwd):/build \
    -v .../C72F55498B31A527181D91D9179C0A80CDFADDB1.sec:/root/C72F55498B31A527181D91D9179C0A80CDFADDB1.sec:ro \
    debian:12 bash -l
apt update && apt install -y dpkg-dev debhelper devscripts
gpg --import /root/C72F55498B31A527181D91D9179C0A80CDFADDB1.sec
cd /build && ./package.sh
```
