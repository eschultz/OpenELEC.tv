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

PKG_NAME="xf86-video-qxl"
PKG_VERSION="0.1.4"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="OSS"
PKG_SITE="http://www.spice-space.org/"
PKG_URL="http://xorg.freedesktop.org/releases/individual/driver/$PKG_NAME-$PKG_VERSION.tar.bz2"
#PKG_DEPENDS_TARGET="toolchain libXcomposite xorg-server spice-protocol spice"
PKG_DEPENDS_TARGET="toolchain libXcomposite xorg-server spice-protocol spice-vdagent"
PKG_PRIORITY="optional"
PKG_SECTION="x11/driver"
PKG_SHORTDESC="xf86-video-qxl: The Xorg driver for QXL emulated video cards"
PKG_LONGDESC="The qxl driver supports qxl emulated video cards."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

#PKG_CONFIGURE_OPTS_TARGET="--with-xorg-module-dir=$XORG_PATH_MODULES --enable-xspice=yes"
PKG_CONFIGURE_OPTS_TARGET="--with-xorg-module-dir=$XORG_PATH_MODULES"


#post_makeinstall_target() {
#  rm -rf $INSTALL/etc/X11
#
#  mkdir -p $INSTALL/etc/X11
#    cp -P $PKG_DIR/config/xorg-qxl.conf $INSTALL/etc/X11/xorg-qxl.conf
#}
