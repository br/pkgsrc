# $NetBSD: buildlink3.mk,v 1.4 2013/06/06 12:53:46 wiz Exp $

BUILDLINK_TREE+=	goffice0.8

.if !defined(GOFFICE0.8_BUILDLINK3_MK)
GOFFICE0.8_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.goffice0.8+=	goffice0.10>=0.10.0
BUILDLINK_ABI_DEPENDS.goffice0.8+=	goffice0.10>=0.10.2nb3
BUILDLINK_PKGSRCDIR.goffice0.8?=	../../misc/goffice0.10

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/lasem/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif # GOFFICE0.8_BUILDLINK3_MK

BUILDLINK_TREE+=	-goffice0.8
