# $NetBSD: Makefile,v 1.36 2013/05/31 12:39:49 wiz Exp $

DISTNAME=	DBD-SQLite-1.37
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
SVR4_PKGNAME=	p5dsl
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBD-SQLite/
COMMENT=	Perl DBI/DBD driver for sqlite databases (self contained)
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=	c
PERL5_PACKLIST=	auto/DBD/SQLite/.packlist
#MAKE_PARAMS+=	SQLITE_LOCATION=${PREFIX:Q}

BUILDLINK_API_DEPENDS.p5-DBI+=	p5-DBI>=1.580
.include "../../databases/p5-DBI/buildlink3.mk"
#.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
