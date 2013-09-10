# $NetBSD: dist.mk,v 1.6.2.1 2013/08/24 19:45:15 tron Exp $
#
# used by devel/xulrunner17/Makefile
# used by www/firefox17/Makefile

DISTNAME=	firefox-${FIREFOX_VER}.source
FIREFOX_VER=	${MOZ_BRANCH}${MOZ_BRANCH_MINOR}
MOZ_BRANCH=	17.0.8
MOZ_BRANCH_MINOR=	esr
MASTER_SITES=	${MASTER_SITE_MOZILLA_ESR:=firefox/releases/${FIREFOX_VER}/source/} \
		${MASTER_SITE_MOZILLA_ALL:=firefox/releases/${FIREFOX_VER}/source/}
EXTRACT_SUFX=	.tar.bz2

DISTINFO_FILE=	${.CURDIR}/../../devel/xulrunner17/distinfo
PATCHDIR=	${.CURDIR}/../../devel/xulrunner17/patches

WRKSRC=		${WRKDIR}/mozilla-esr17