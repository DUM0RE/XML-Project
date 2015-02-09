echo off
cscript transform.js db_sales db_sales sales
cscript validate.js sales sales
cscript transform.js sales salesbyamount salesbyamount html
cscript transform.js sales salesbydate salesbydate html
cscript transform.js sales salesbyperson salesbyperson html
cscript transform.js sales salesfo salesbydate fo
cd fop-1.1
call fop ../salesbydate.fo ../salesbydate.pdf
call fop ../salesbydate.fo -rtf ../salesbydate.rtf
call fop ../salesbydate.fo -png ../salesbydate.png