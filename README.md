ryoko-ukagai
============

京都大学理系共通事務部の旅行伺生成用 LaTeX マクロ

以下のものが必要です:
- pdftk
- teikei.cls, youshi.sty [Teikei マクロについて](ftp://masui.med.osaka-u.ac.jp/pub/public/latex/style/Teikei0.96.tar.gz)からダウンロードしてください．
- ifthen.sty, calc.sty
- 旅行伺様式の pdf (MD5SUM: 2baa916259bb90970582755f0b028f10): これは macros/ 以下に ukagai-back.pdf という名前で置いてください．

使い方
======

1. sample.tex を参考に hoge.tex を作る
2. ./ukagai.sh hoge を実行
