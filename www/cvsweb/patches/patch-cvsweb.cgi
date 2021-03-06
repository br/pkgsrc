$NetBSD: patch-cvsweb.cgi,v 1.1.2.2 2013/08/14 12:45:40 tron Exp $

Fix warnings from newer perl versions

--- cvsweb.cgi.orig	2013-07-30 12:49:33.268655300 +0000
+++ cvsweb.cgi
@@ -1192,7 +1192,7 @@ EOF
 <legend>General options</legend>
 <input type="hidden" name="copt" value="1" />
 EOF
-    for my $v qw(hidecvsroot hidenonreadable) {
+    for my $v (qw(hidecvsroot hidenonreadable)) {
       printf(qq{<input type="hidden" name="%s" value="%s" />\n},
              $v, $input{$v} || 0);
     }
@@ -2951,7 +2951,7 @@ sub printLog($$$;$$)
   print "<br />\n";
 
   print '<i>';
-  if (defined @mytz) {
+  if (@mytz) {
     my ($est) = $mytz[(localtime($date{$_}))[8]];
     print scalar localtime($date{$_}), " $est</i> (";
   } else {
