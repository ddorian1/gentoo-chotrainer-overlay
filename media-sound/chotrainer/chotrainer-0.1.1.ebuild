EAPI=6
inherit qmake-utils fdo-mime gnome2-utils

DESCRIPTION="Training software for choirs"
HOMEPAGE="https://chotrainer.jschwab.org/"
SRC_URI="https://github.com/ddorian1/chotrainer/archive/v${PV}.tar.gz -> ${PF}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-qt/qtcore-5.4
	dev-qt/qtgui:5
	media-sound/fluidsynth"
DEPEND="${RDEPEND}
	dev-qt/linguist-tools:5"

src_configure() {
	eqmake5
}

src_compile() {
	$(qt5_get_bindir)/lrelease chotrainer.pro
	emake
}

pkg_preinst() {
	gnome2_icon_savelist
}

src_install() {
	emake INSTALL_ROOT="${D}" install
}

pkg_postinst() {
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
	gnome2_icon_cache_update
}
