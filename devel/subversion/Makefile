# $NetBSD: Makefile,v 1.49 2013/06/29 08:56:56 obache Exp $

PKGNAME=	subversion-${SVNVER}
COMMENT=	Version control system, meta-package

META_PACKAGE=	# empty

.include "../../devel/subversion/Makefile.common"

RUBY_VERSION_SUPPORTED=	18

DEPENDS+=	subversion-base-${SVNVER}{,nb[0-9]*}:../../devel/subversion-base
DEPENDS+=	${APACHE_PKG_PREFIX}-subversion-${SVNVER}{,nb[0-9]*}:../../www/ap2-subversion
DEPENDS+=	p5-subversion-${SVNVER}{,nb[0-9]*}:../../devel/p5-subversion
DEPENDS+=	${PYPKGPREFIX}-subversion-${SVNVER}{,nb[0-9]*}:../../devel/py-subversion
DEPENDS+=	${RUBY_PKGPREFIX}-subversion-${SVNVER}{,nb[0-9]*}:../../devel/ruby-subversion

.if !empty(PKG_OPTIONS:Mjava)
# The standard implementation of java is non-portable and non-free, so
# we do not depend on it by default.
DEPENDS+=	java-subversion-${SVNVER}{,nb[0-9]*}:../../devel/java-subversion
.endif

CATEGORIES+=	meta-pkgs

.include "../../lang/python/pyversion.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/apache.mk"

.include "../../mk/bsd.pkg.mk"
