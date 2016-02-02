EAPI="5"

MY_PV="3.1.1_b3"

SRC_URI="https://github.com/sirjuddington/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="SLADE3 is a modern editor for Doom-engine based games and source ports"
HOMEPAGE="http://slade.mancubus.net/"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-2"
S="${WORKDIR}/SLADE-${MY_PV}/dist"

DEPEND="x11-libs/wxGTK:3.0[gstreamer]
  media-libs/libsfml
  x11-libs/fltk
  media-sound/fluidsynth
  media-libs/freeimage"
RDEPEND="$DEPEND"

src_configure() {
  # cmake-utils does not allow overriding BUILD_DIR for in-source build
  # so I have no idea how to build both slade & pk3 targets with it
  cmake .. -DCMAKE_INSTALL_PREFIX=/usr || die "cmake failed"
}

src_compile() {
  emake || die "emake failed"
}
