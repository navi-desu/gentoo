# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake flag-o-matic xdg

DESCRIPTION="Classic overhead run-and-gun game"
HOMEPAGE="https://cxong.github.io/cdogs-sdl/"
SRC_URI="
	https://github.com/cxong/cdogs-sdl/archive/refs/tags/${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="
	GPL-2+
	BSD-2 CC-BY-3.0 CC-BY-4.0 CC-BY-SA-3.0 CC0-1.0 WTFPL-2 XMAME public-domain
"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	media-libs/libsdl2[haptic,opengl]
	media-libs/sdl2-image[png]
	media-libs/sdl2-mixer[mp3,vorbis,wav]
	net-libs/enet:1.3=
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/${PN}-1.1.1-cmake.patch
)

src_configure() {
	filter-lto #858527

	local mycmakeargs=(
		-DCDOGS_DATA_DIR="${EPREFIX}"/usr/share/${PN}/ # trailing / is needed
		-DBUILD_EDITOR=OFF
		-DBUILD_TESTING=$(usex test)
		-DUSE_SHARED_ENET=ON
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	dodoc doc/{AUTHORS,original_readme.txt}

	# CREDITS is used at runtime, rest is licenses or duplicates
	find "${ED}"/usr/share/${PN}/doc -type f ! -name CREDITS -delete || die
}
