# $FreeBSD$

PORTNAME=	znapzend
PORTVERSION=	0.14.1
CATEGORIES=	misc
MASTER_SITES=	https://github.com/oetiker/znapzend/releases/download/v0.14.1/

MAINTAINER=	thomasrcurry@gmail.com
COMMENT=	ZnapZend is a ZFS centric backup tool. It relies on snapshot, send and receive todo its work. It has the built-in ability to to manage both local snapshots as well as remote copies by thining them out as time progresses.

USES=		gmake

BUILD_DEPENDS=	gmake:${PORTSDIR}/devel/gmake \
		curl:${PORTSDIR}/ftp/curl \
		wget:${PORTSDIR}/ftp/wget

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=/usr/local
CONFIGURE_ENV=	THIRDPARTY_DIR=/${pwd}

USE_RC_SUBR=	znapzend

.include <bsd.port.mk>
