# $FreeBSD$

PORTNAME=	znapzend
PORTVERSION=	0.14.1
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/oetiker/znapzend/releases/download/v0.14.1/

MAINTAINER=	thomasrcurry@gmail.com
COMMENT=	ZnapZend is a ZFS centric backup tool

LICENSE=  	GPL
LICENSE_FILE=   ${WRKSRC}/LICENSE

BUILD_DEPENDS=	curl:${PORTSDIR}/ftp/curl \
		wget:${PORTSDIR}/ftp/wget

USES=		gmake

GNU_CONFIGURE=	yes

USE_RC_SUBR=	znapzend

.include <bsd.port.mk>
