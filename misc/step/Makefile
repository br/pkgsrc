# $NetBSD: Makefile,v 1.16 2013/06/06 12:54:49 wiz Exp $

DISTNAME=	step-${_KDE_VERSION}
PKGREVISION=	3
CATEGORIES=	misc
COMMENT=	KDE interactive physical simulator

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
BUILDLINK_API_DEPENDS.eigen2+=  eigen2>=2.0.3
.include "../../math/eigen2/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
