#! /bin/bash -
UKAGAIDIR=`dirname $1`
export TEXINPUTS=.:$UKAGAIDIR/macros/:
export PATH=/usr/texbin:/usr/local/bin:$PATH

cd $UKAGAIDIR
platex -kanji=jis $1 
dvipdfmx -l -p a4 -o tmp.pdf `basename $1 .tex`.dvi
pdftk tmp.pdf output `basename $1 .tex`.pdf background macros/ukagai-back.pdf
chmod g+w `basename $1 .tex`.pdf
rm `basename $1 .tex`.{aux,log,dvi} tmp.pdf
