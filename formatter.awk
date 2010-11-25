BEGIN { print "<HTML>\n" ; \
				print "<HEAD>\n \
				<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\">\n \
				<title>TODO</title>\n \
				</HEAD>" ; \
				DONE=0 ; \
				DELIMITER=0 }
/^[^ ]+:/ { if ( DONE == 0 ) { print "<br /><b>" $0 "</b><br />"; DONE=1 } }
/^[\t\s]*\+/ { if ( DONE == 0 ) { DELIMITER=0 ; for (I=0; I<DELIMITER; I++) { print "&nbsp;&nbsp;" } ; print $0 "<br />" ; DONE=1 } }
/^[\t\s]*\*/ { if ( DONE == 0 ) { DELIMITER=1 ; for (I=0; I<DELIMITER; I++) { print "&nbsp;&nbsp;" } ; print $0 "<br />" ; DONE=1 } }
/^[\t\s]*\-/ { if ( DONE == 0 ) { DELIMITER=2 ; for (I=0; I<DELIMITER; I++) { print "&nbsp;&nbsp;" } ; print $0 "<br />" ; DONE=1 } }
/^[\t\s]*=/  { if ( DONE == 0 ) { DELIMITER=3 ; for (I=0; I<DELIMITER; I++) { print "&nbsp;&nbsp;" } ; print $0 "<br />" ; DONE=1 } }
{ if ( DONE == 0 ) { for (I=0; I<DELIMITER+1; I++) { print "&nbsp;&nbsp;" } ; print $0 "<br />" } else { DONE=0 } }
END { print "</HTML>\n" }
