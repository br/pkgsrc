# $NetBSD: Makefile,v 1.13 2013/06/04 22:16:57 tron Exp $

DISTNAME=	hwloc-1.7
PKGREVISION=	2
CATEGORIES=	parallel
MASTER_SITES=	http://www.open-mpi.org/software/hwloc/v${PKGVERSION_NOREV}/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	asau@inbox.ru
HOMEPAGE=	http://www.open-mpi.org/projects/hwloc/
COMMENT=	Portable Hardware Locality
LICENSE=	modified-bsd

USE_LIBTOOL=		yes
USE_TOOLS+=		aclocal automake autoconf autoreconf pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-picky

TEST_TARGET=	check

pre-configure:
	cd ${WRKSRC} && autoreconf -ivf

# libpci??
#.include "../../graphics/cairo/buildlink3.mk" # optional
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
