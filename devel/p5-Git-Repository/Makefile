# $NetBSD: Makefile,v 1.8 2013/05/31 12:40:22 wiz Exp $

DISTNAME=	Git-Repository-1.302
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Git/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Git-Repository/
COMMENT=	Perl interface to Git repositories
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	scmgit-base-[0-9]*:../../devel/scmgit-base
DEPENDS+=	p5-System-Command>=1.05:../../devel/p5-System-Command

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Git/Repository/.packlist

USE_TOOLS+=	perl

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
