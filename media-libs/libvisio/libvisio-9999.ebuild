# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit flag-o-matic

if [[ ${PV} == *9999* ]]; then
	EGIT_REPO_URI="https://anongit.freedesktop.org/git/libreoffice/libvisio.git"
	inherit autotools git-r3
else
	SRC_URI="https://dev-www.libreoffice.org/src/libvisio/${P}.tar.xz"
	KEYWORDS="~amd64 ~arm ~arm64 ~hppa ~loong ~ppc ~ppc64 ~riscv ~sparc ~x86"
fi

DESCRIPTION="Library parsing the file format of MS Visio documents"
HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libvisio"

LICENSE="|| ( GPL-2+ LGPL-2.1 MPL-1.1 )"
SLOT="0"
IUSE="doc test tools"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-libs/icu:=
	dev-libs/librevenge
	dev-libs/libxml2:=
"
DEPEND="${RDEPEND}
	dev-libs/boost
	dev-util/gperf
	dev-build/libtool
	test? ( dev-util/cppunit )
"
BDEPEND="
	dev-lang/perl
	virtual/pkgconfig
	doc? ( app-text/doxygen )
"

src_prepare() {
	default
	[[ -d m4 ]] || mkdir "m4" || die
	[[ ${PV} == *9999* ]] && eautoreconf
}

src_configure() {
	# bug 619688, 932496
	append-cxxflags -std=c++17

	local myeconfargs=(
		$(use_with doc docs)
		$(use_enable test tests)
		$(use_enable tools)
	)
	econf "${myeconfargs[@]}"
}

src_install() {
	default
	find "${ED}" -name '*.la' -delete || die
}
