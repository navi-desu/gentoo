# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_P="libe-book-${PV}"
inherit autotools

DESCRIPTION="Library parsing various ebook formats"
HOMEPAGE="https://sourceforge.net/projects/libebook/"
SRC_URI="https://downloads.sourceforge.net/${PN}/${MY_P}.tar.xz"
S="${WORKDIR}/${MY_P}"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~loong ppc64 ~riscv x86"
IUSE="doc test tools"

RESTRICT="!test? ( test )"

RDEPEND="
	app-text/liblangtag
	dev-libs/icu:=
	dev-libs/librevenge
	dev-libs/libxml2:=
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-libs/boost
	dev-util/gperf
"
BDEPEND="
	virtual/pkgconfig
	doc? ( app-text/doxygen )
	test? ( dev-util/cppunit )
"

PATCHES=( "${FILESDIR}/${P}-icu-68.patch" )

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	local myeconfargs=(
		--disable-werror
		$(use_with doc docs)
		$(use_enable test tests)
		$(use_with tools)
	)
	econf "${myeconfargs[@]}"
}

src_install() {
	default
	find "${D}" -name '*.la' -type f -delete || die
}
