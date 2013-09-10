$NetBSD: patch-js_src_ion_AsmJS.h,v 1.1 2013/06/26 11:32:12 ryoon Exp $

--- js/src/ion/AsmJS.h.orig	2013-06-17 22:13:09.000000000 +0000
+++ js/src/ion/AsmJS.h
@@ -97,6 +97,9 @@ class AsmJSActivation
     void setResumePC(void *pc) { resumePC_ = pc; }
 };
 
+// The assumed page size; dynamically checked in CompileAsmJS.
+const size_t AsmJSPageSize = 4096;
+
 // The asm.js spec requires that the ArrayBuffer's byteLength be a multiple of 4096.
 static const size_t AsmJSAllocationGranularity = 4096;
 
