EAPI=7

PYTHON_COMPAT=( python3_4 python3_5 python3_6 python3_7 )

inherit distutils-r1

DESCRIPTION="Automatically mute songs and advertisements in Spotify"
HOMEPAGE="https://github.com/serialoverflow/blockify"
SRC_URI="https://github.com/serialoverflow/blockify/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cli gstreamer pulseaudio"

DEPEND="
	dev-lang/python:*
	>=media-sound/spotify-1.0.12
	x11-misc/wmctrl
	media-sound/alsa-utils
	=dev-python/pygobject-3*
	=x11-libs/gtk+-3*
	pulseaudio? ( media-sound/pulseaudio )
	gstreamer? ( media-libs/gstreamer:* )
	cli? ( dev-python/docopt )
"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"

REQUIRED_USE="gstreamer? ( pulseaudio )"
