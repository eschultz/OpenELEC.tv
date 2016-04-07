################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="spice-vdagent"
PKG_VERSION="0.16.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3"
PKG_SITE="http://www.spice-space.org/"
PKG_URL="http://www.spice-space.org/download/releases//${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain systemd spice-protocol xorg-server alsa-lib"
PKG_PRIORITY="optional"
PKG_SECTION="x11/util"
PKG_SHORTDESC="spice-vdagent is a service that assists with QXL video resolution change, clipboard and client-side mouse."
PKG_LONGDESC="spice-vdagent is a service that assists with QXL video resolution change, clipboard and client-side mouse."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--with-init-script=systemd"


pre_configure_target() {
# hack to prevent a build error
  CFLAGS="$CFLAGS -lXext"
  LDFLAGS="$CFLAGS -lXext"
}

post_makeinstall_target() {
  # TODO
  #rm -rf $INSTALL/usr/lib
  #mkdir -p $INSTALL/usr/bin
  #cp -P $PKG_DIR/scripts/xorg-launch $INSTALL/usr/bin
  echo TODO
}
