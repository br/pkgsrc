# $NetBSD: Makefile,v 1.5 2013/06/04 07:35:14 wiz Exp $
#

VERS=			0.53.0
DISTNAME=		logilab-common-${VERS}
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
EGG_NAME=		logilab_common-${VERS}
CATEGORIES=		devel python
MASTER_SITES=	http://ftp.logilab.org/pub/common/

MAINTAINER=		kamel.derouiche@gmail.com
HOMEPAGE=		http://www.logilab.org/project/logilab-common
COMMENT=		Useful miscellaneous modules used by Logilab projects
LICENSE=		gnu-lgpl-v2.1

#comment this out to avoid problems to find the binary by other programs
PLIST_SUBST+=   PYVERSSUFFIX=${PYVERSSUFFIX}

INSTALLATION_DIRS=  ${PKGMANDIR}/man1

post-extract:
	${MV} ${WRKSRC}/bin/pytest ${WRKSRC}/bin/pytest${PYVERSSUFFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pytest.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../lang/python/egg.mk"
.include "../../time/py-mxDateTime/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
