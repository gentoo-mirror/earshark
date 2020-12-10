# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ECM_HANDBOOK="forceoptional"
VIRTUALX_REQUIRED="test"
inherit ecm

DESCRIPTION="Plasma 5 applet in order to show window buttons in your panels"
HOMEPAGE="https://github.com/Zren/material-decoration"

if [ "$PV" == "9999" ]; then
	EGIT_REPO_URI="https://github.com/Zren/${PN}.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/Zren/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-2"
SLOT="5"
IUSE=""

RDEPEND="kde-plasma/kwin"
