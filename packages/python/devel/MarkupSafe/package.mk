# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="MarkupSafe"
PKG_VERSION="2.1.0"
PKG_SHA256="80beaf63ddfbc64a0452b841d8036ca0611e049650e20afcb882f5d3c266d65f"
PKG_LICENSE="GPL"
PKG_SITE="https://pypi.org/project/MarkupSafe/"
PKG_URL="https://files.pythonhosted.org/packages/source/${PKG_NAME:0:1}/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="Python3:host setuptools:host"
PKG_LONGDESC="MarkupSafe implements a XML/HTML/XHTML Markup safe string for Python"
PKG_TOOLCHAIN="manual"

makeinstall_host() {
  exec_thread_safe python3 setup.py install --prefix=${TOOLCHAIN}
}
