# $NetBSD: site.config.m4,v 1.10 2009/12/16 09:46:36 jnemeth Exp $

# pathnames specific to pkgsrc
#
define(`confEBINDIR', `${PREFIX}/libexec/sendmail')
define(`confMBINDIR', `${PREFIX}/libexec/sendmail')
define(`confSBINDIR', `${PREFIX}/sbin')
define(`confUBINDIR', `${PREFIX}/bin')
define(`confHFDIR', `${PREFIX}/share/misc')
define(`confINSTALL_RAWMAN', 'yes')
define(`confDONT_INSTALL_CATMAN', 'yes')
define(`confMANROOT', `${PREFIX}/${PKGMANDIR}/man')
define(`confMANROOTMAN', `${PREFIX}/${PKGMANDIR}/man')
define(`confMAN1EXT', `1')
define(`confMAN3EXT', `3')
define(`confMAN4EXT', `4')
define(`confMAN5EXT', `5')
define(`confMAN8EXT', `8')
APPENDDEF(`confENVDEF', `-I${PREFIX}/include -DSMRSH_CMDDIR=\"${SMRSH_CMDDIR}\"')
APPENDDEF(`confLIBS', `-L${PREFIX}/lib')
APPENDDEF(`confMAPDEF', `-DSOCKETMAP')

# the following are handled by pkgsrc
define(`confINST_DEP',`')
define(`confNO_STATISTICS_INSTALL')

# set file ownership to pkgsrc default
define(`confLIBOWN', `${BINOWN}')
define(`confLIBGRP', `${BINGRP}')
define(`confINCOWN', `${SHAREOWN}')
define(`confINCGRP', `${SHAREGRP}')

# have libmilter use poll(2) instead of select(2)
# XXX all supported systems should support poll(2), if one is discovered
# that doesn't, we can revisit this
APPENDDEF(`conf_libmilter_ENVDEF', `-DSM_CONF_POLL=1')

