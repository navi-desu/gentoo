# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_REQ_USE="xml(+)"
PYTHON_COMPAT=( python3_{10..13} )

inherit gnome2 python-any-r1

DESCRIPTION="An account manager and channel dispatcher for the Telepathy framework"
HOMEPAGE="https://gitlab.freedesktop.org/telepathy/telepathy-mission-control"
SRC_URI="https://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~loong ppc ppc64 ~riscv sparc x86 ~amd64-linux ~x86-linux"
IUSE="debug networkmanager"

RDEPEND="
	>=dev-libs/dbus-glib-0.82
	>=dev-libs/glib-2.46:2
	>=sys-apps/dbus-0.95
	>=net-libs/telepathy-glib-0.20
	networkmanager? ( >=net-misc/networkmanager-1:= )
"
DEPEND="${RDEPEND}"
BDEPEND="
	${PYTHON_DEPS}
	dev-libs/libxslt
	>=dev-build/gtk-doc-am-1.17
	virtual/pkgconfig
"

src_configure() {
	# creds is not available
	gnome2_src_configure \
		--disable-static \
		--disable-upower \
		$(use_enable debug) \
		$(use_with networkmanager connectivity nm)
}
