# $NetBSD: Makefile,v 1.13 2013/05/31 12:40:01 wiz Exp $
#

DISTNAME=		mr_1.15
PKGNAME=		${DISTNAME:S/_/-/}
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_DEBIAN:=pool/main/m/mr/}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://kitenet.net/~joey/code/mr/
COMMENT=		Treat multiple repositories as one combined repository
LICENSE=		gnu-gpl-v2

DEPENDS+=		p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=		p5-HTML-Parser-[0-9]*:../../www/p5-HTML-Parser
DEPENDS+=		p5-ack-[0-9]*:../../textproc/p5-ack

NO_BUILD=		yes

WRKSRC=			${WRKDIR}/${PKGBASE}
USE_LANGUAGES=		# none

USE_TOOLS+=		perl:run

REPLACE_PERL+=  	mr webcheckout

EGDIR=			${PREFIX}/share/examples/${PKGBASE}
SHAREDIR=		${PREFIX}/share/${PKGBASE}
INSTALLATION_DIRS=	bin ${EGDIR} ${SHAREDIR}

do-install:
	set -e; cd ${WRKSRC};						\
	${INSTALL_DATA} mrconfig ${DESTDIR}${EGDIR};			\
	${INSTALL_DATA} mrconfig.complex ${DESTDIR}${EGDIR};		\
	for i in lib/*; do						\
	${INSTALL_DATA} $${i} ${DESTDIR}${SHAREDIR};			\
	done;								\
	${INSTALL_SCRIPT} mr ${DESTDIR}${PREFIX}/bin;			\
	${INSTALL_SCRIPT} webcheckout ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
