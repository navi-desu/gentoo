# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

GREATEST_PV="1.2.1"

if [[ ${PV} = *9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/ultravideo/kvazaar"
else
	SRC_URI="https://github.com/ultravideo/kvazaar/archive/v${PV}.tar.gz -> ${P}.tar.gz
		test? ( https://github.com/silentbicycle/greatest/archive/v${GREATEST_PV}.tar.gz -> greatest-${GREATEST_PV}.tar.gz )"
	KEYWORDS="~amd64 ~mips"
fi
inherit autotools flag-o-matic multilib-minimal

DESCRIPTION="Open-source HEVC encoder"
HOMEPAGE="http://ultravideo.cs.tut.fi/ https://github.com/ultravideo/kvazaar"

LICENSE="LGPL-2.1"
# subslot = libkvazaar major
SLOT="0/6"
IUSE="static-libs test"
REQUIRED_USE="test? ( static-libs )"

RESTRICT="!test? ( test )"
ASM_DEP=">=dev-lang/yasm-1.2.0"
RDEPEND=""
DEPEND="${RDEPEND}
	test? (
		media-video/ffmpeg
		media-video/hevc-hm
	)
	abi_x86_32? ( ${ASM_DEP} )
	abi_x86_64? ( ${ASM_DEP} )
"

src_prepare() {
	default
	sed -e "/^dist_doc_DATA/s/COPYING //" -i Makefile.am || die
	eautoreconf
	if use test && [[ ${PV} != *9999 ]]; then
		# https://bugs.gentoo.org/show_bug.cgi?id=595932
		rmdir "${S}/greatest" || die
		mv "${WORKDIR}/greatest-${GREATEST_PV}" "${S}/greatest" || die
	fi
	# Some m4 macros append Werror, we do not want that.
	append-flags "-Wno-error"
}

multilib_src_configure() {
	ECONF_SOURCE="${S}" econf \
		--disable-werror \
		$(use_enable static-libs static)
}

multilib_src_test() {
	KVZ_TEST_VALGRIND=0 emake check
}

multilib_src_install_all() {
	find "${ED}" -name '*.la' -delete || die
}
