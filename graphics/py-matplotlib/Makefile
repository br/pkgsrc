# $NetBSD: Makefile,v 1.38 2013/06/04 22:16:25 tron Exp $
#

DISTNAME=		matplotlib-1.2.0
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		graphics python
MASTER_SITES=		https://github.com/downloads/matplotlib/matplotlib/
FETCH_USING=		curl

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://matplotlib.sourceforge.net/
COMMENT=		Matlab-style plotting package for Python

DEPENDS+=		${PYPKGPREFIX}-pytz>=2008b:../../time/py-pytz
DEPENDS+=		${PYPKGPREFIX}-dateutil>=1.2:../../time/py-dateutil

USE_LANGUAGES=		c c++
USE_TOOLS+=		pkg-config
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

REPLACE_PYTHON=		lib/matplotlib/dates.py
REPLACE_PYTHON+=	lib/matplotlib/sankey.py
REPLACE_PYTHON+=	lib/mpl_toolkits/mplot3d/art3d.py
REPLACE_PYTHON+=	lib/mpl_toolkits/mplot3d/axes3d.py
REPLACE_PYTHON+=	lib/mpl_toolkits/mplot3d/axis3d.py
REPLACE_PYTHON+=	lib/mpl_toolkits/mplot3d/proj3d.py

post-patch:
	( ${ECHO} "[directories]"; \
	${ECHO} "basedirlist=/usr"; \
	${ECHO} "[gui_support]"; \
	${ECHO} "gtk = False"; \
	${ECHO} "gtkagg = False"; \
	${ECHO} "tkagg = False"; \
	${ECHO} "wxagg = False" ) > ${WRKSRC}/setup.cfg

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
