#!/bin/bash
./Make.sh

EDITION="1raEd"
TITULO="Aulicha"
NOME="Fernando-PR"
PDFFILENAME=$TITULO-$EDITION-$NOME.pdf
echo "PDFTK:$PDFFILENAME"

pdftk A=cover/capa-front.pdf B=cover/blank.pdf C=ebook.pdf D=cover/capa-back.pdf cat A B C B D output $PDFFILENAME

################################################################################
### Crear SIG file
gpg --detach-sign --use-agent $PDFFILENAME 
mv $PDFFILENAME.sig GnuPG-Verificador.sig

### To verify using the sig file
gpg --verify GnuPG-Verificador.sig $PDFFILENAME
