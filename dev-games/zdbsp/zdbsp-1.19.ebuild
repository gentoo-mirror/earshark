# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

SRC_URI="https://github.com/rheit/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="Standalone version of ZDoom's internal node builder"
HOMEPAGE="http://zdoom.org/"
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="GPL-2"

DEPEND="sys-libs/zlib"
RDEPEND="$DEPEND"

src_install() {
	dobin "${BUILD_DIR}/zdbsp" || die "doins failed"
}
