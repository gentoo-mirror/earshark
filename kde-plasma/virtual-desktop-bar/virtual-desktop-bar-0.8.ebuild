# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_HANDBOOK="forceoptional"
VIRTUALX_REQUIRED="test"
inherit ecm

DESCRIPTION="KDE Plasma panel applet for managing virtual desktops"
HOMEPAGE="https://github.com/wsdfhjxc/virtual-desktop-bar"
KEYWORDS="~amd64 ~x86"

SRC_URI="https://github.com/wsdfhjxc/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="5"
IUSE=""

CDEPEND="
	kde-frameworks/kdeclarative:5
	kde-frameworks/plasma:5
	kde-frameworks/ki18n:5
	dev-qt/qtgui:5
"
DEPEND="${CDEPEND}
	sys-devel/gettext
"
