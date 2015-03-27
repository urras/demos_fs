.de RT
.ta 0.8i 1.6i 2.4i 3.2i 4.0i 4.8i 5.6i 6.4i 7.2i 8.0i
..
.de pp
.in \\n(CIu
.sp 1
.ne 2
.ti +\\n(AO
..
.de np
.HO \\$1
.in \w'\\*(PN'u+1n
.ti -\w'\\*(PN'u+1n
\&\\*(PN\ \c
..
.de GN
.nr XX \\n(UW
.ie \\n(.$>0 .HO \\$1
.el .HO
.if !\\n(XX=\\n(UW \{\
.       nr WN \\w'\\*(PN\ 'u
.       if \\n(XX<\\n(UW .nr I\\n(UW \\n(I\\n(XXu+\\n(WNu
.       in \\n(I\\n(UWu \}
.ti -\\n(WNu
.nr CI \\n(.iu
.sp 1
\&\\*(PN\ \c
..
.de HO
.if \\n(.$ .nr UW \\$1
.nr WW \\n(UW+1
.if \\n(U\\n(WW \{\
.       if !\\n(WW-8 .nr U8 0
.       if !\\n(WW-7 .nr U7 0
.       if !\\n(WW-6 .nr U6 0
.       if !\\n(WW-5 .nr U5 0
.       if !\\n(WW-4 .nr U4 0
.       if !\\n(WW-3 .nr U3 0
.       if !\\n(WW-2 .nr U2 0   \}
.nr U\\n(UW \\n(U\\n(UW+1
.ds PN \\n(U1.
.if \\n(U2 .as PN \\n(U2.
.if \\n(U3 .as PN \\n(U3.
.if \\n(U4 .as PN \\n(U4.
.if \\n(U5 .as PN \\n(U5.
.if \\n(U6 .as PN \\n(U6.
.if \\n(U7 .as PN \\n(U7.
.if \\n(U8 .as PN \\n(U8.
..
.de LI
.HO 1
.IP \\*(PN
..
.de nd
.ds AP \\$1
.nr PN \\$2
..
.de ZA
'bp
..
.de ZZ
.ev 1
'sp 2
.\"  if e .tl '%'''
.\"  if o .tl '''%'
.tl '''%'
'bp
.ev
..
.de DT
.ev 1
'sp 3
.tl ///%/
.\"  |'bp
.ev
..
.de UT
.ev 1
.if !\\n%=1 .tl ///%./
'sp 3
.\"  |'bp
.ev
..
.de PB
.if \\n(.$ .nr NI 1
.NC
.IP \\*(BI)
.nr NI \\n(NI+1
..
.de NC
.if \\n(NI=1 .ds BI а
.if \\n(NI=2 .ds BI б
.if \\n(NI=3 .ds BI в
.if \\n(NI=4 .ds BI г
.if \\n(NI=5 .ds BI д
.if \\n(NI=6 .ds BI е
.if \\n(NI=7 .ds BI ж
.if \\n(NI=8 .ds BI з
.if \\n(NI=9 .ds BI и
.if \\n(NI=10 .ds BI й
.if \\n(NI=11 .ds BI к
.if \\n(NI=12 .ds BI л
.if \\n(NI=13 .ds BI м
.if \\n(NI=14 .ds BI н
.if \\n(NI=15 .ds BI о
.if \\n(NI=16 .ds BI п
.if \\n(NI=17 .ds BI р
.if \\n(NI=18 .ds BI с
.if \\n(NI=19 .ds BI т
.if \\n(NI=20 .ds BI у
.if \\n(NI=21 .ds BI ф
.if \\n(NI=22 .ds BI х
.if \\n(NI=23 .ds BI ц
.if \\n(NI=24 .ds BI ч
.if \\n(NI=25 .ds BI ш
.if \\n(NI=26 .ds BI щ
.if \\n(NI=27 .ds BI ы
.if \\n(NI=28 .ds BI ь
.if \\n(NI=29 .ds BI э
.if \\n(NI=30 .ds BI ю
.if \\n(NI=31 .ds BI я
..
.de sh
.HO \\$1
.in 0
.if \\$1=1 .if \\n(nl .bp
.if !\\$1=1 .ne 6v
.if \\n(nl .sp 2
.in +5n
.ll -8n
.in +\w'\\*(PN\ 'u
.ti -\w'\\*(PN\ 'u
.if \\$1=1 .ft 3
\&\\*(PN\\ \\$2
.ft 1
.br
.da O[
.ll \\n(GLu-5n
.if \\$1=1 .sp
.if \\$1=1 .ST 0 4 4
.if \\$1=2 .ST 4 6 10
.if \\$1=3 .ST 10 8 18
\&\\*(PN\t\\$2\\a\\t\\n%
.br
.di
.ST 0 0
.      \"if \\$1=1 \{\
.      \"       da TR
.      \"       sp
.      \"\&\\*(PN\\ \\$2
.      \"       sp
.      \"       br
.      \"       di
.      \"\}
.in \\n(CIu
.ll \\n(GLu
.\"    sp 1
..
.de ST
.in \\$3n
.ta \\$2n
.ti \\$1n
..
.de uh
.in 0
.if \\n(nl .bp
.in +5n
.ll -8n
.ad c
.ft 3
\&\\$1
.ft
.br
.ad n
.da O[
.ll \\n(GLu-5n
.sp
.ST 0 4 0
\&\\$1\\a\\t\\n%
.br
.di
.in \\n(CIu
.ll \\n(GLu
.sp 1
..
.de wi
.nh
.ll 20n
.in 0
.ad c
.di WI
.it 1 WZ
..
.de WZ
.br
.di
.rs
.sp 1v
.ne \\n(dnu+2v
.mk Aa
.nf
.WI
.br
.mk Bb
.rt \\n(Aau
.wh \\n(Bbu+1v WT
.po 22n
.ll \\n(GLu-22n
.ad b
.hy
.fi
..
.de WT
.po 0
'll \\n(GLu
.wh \\n(Bbu+1v
..
.de ob
.nr OF 0
.ie \\$2>\\n(.tu \{\
.       nr OF 1
.       wh 2v To
.       ds A1 \\$1
.       ds A2 \\$2 \}
.el \{\
.       if e .-] \\$1 \\$2
.       if o .[- \\$1 \\$2 \}
..
.de -]
.ds OT L
.nr Eo \\n(.du+\\$2
.wh \\n(.du+\\$2 Ot
'in +\\$1
..
.de [-
.ds OT R
.nr Eo \\n(.du+\\$2
.wh \\n(.du+\\$2 oT
.ll -\\$1
..
.de Ot
'in 0
.wh \\n(Eou
..
.de oT
.ll \\n(GLu
.wh \\n(Eou
..
.de To
.if e .-] \\*(A1 \\*(A2
.if o .[- \\*(A1 \\*(A2
..
.de fn
\&(*\\n+(FN)
.ie \\n(FF=0 \{\
.       nr DF \\n(EPv+1v
.       di F[
.       nr FF 1 \}
.el \{\
.       da F[
.       wh -\\n(DFu \}
.ev 2
.ip *\\n(FN) 4 123
..
.de fe
.ns
.pp
.di
.nr DF \\n(DFu+\\n(dnu
.wh -\\n(DFu PF
.ev 0
..
.de FH
\h'|0'\l'\\n(.lu\-'
.nr FN 0 1
..
.de PF
.ev 2
'nf
.FH
.F[
'fi
.nr FF 0
.wh -\\n(DFu
.ev 0
..
.de ct
.if \\n(nl .bp
.ce 1
СОДЕРЖАНИЕ
.br
.ls 1
.ll \\n(GLu
.in 0
.sp 2
.ta \\n(GLu-5n  \\n(GLuR
.O[
..
.de pt
.uh "ТАБЛИЦА КОМАНД"
.nf
.ta 4nR 5n 17n 20n 24n 28n 32n 36n
\\*(gtстр.\\*(gtКоманда\\*(gtКраткое описание
.sp 1
.TR
.fi
..
.de ip
.in \\n(CIu
.ie \\n(.$>1 .nr XW \\$2
.el .nr XW \\n(DI
.in +\\n(XWn
.ti -\\n(XWn
.if \\n(.$<3 .sp 1
\&\\$1\\h'|\\n(.iu'\c
.if \\w@\\$1@u>=\\n(XWn .br
.\"     if \\w'\\$1'u<\\n(XWn \\h'|\\n(.iu'
.\"      \&\\$1\\h'|\\n(.iu'
..
.de IP
.in \\n(CIu
.nr XW \\w'\\$1\ 'u
.if \\n(.$>1 .in +\\$2
.in +\\n(XWu
.ti -\\n(XWu
.sp 1
\&\\$1\ \c
..
.de (c
.sp
.ce 1000
..
.de )c
.ce 0
.sp
..
.de c(
.di [C
.ce 1000
..
.de c)
.ce 0
.sp
.di
.ne \\n(dnu
.nf
.[C
.sp
.fi
..
.de (l
.if \\n(.$ \{\
.        nr SI \\n(.i
.        in +\\$1  \}
.nf
.di [L
..
.de )l
.di
.sp 1
.ne \\n(dnu
.in \\n(SIu
.nf
.[L
.sp 1
.fi
..
.de xx
.sp 1v
..
.de h1
.xx
.in \\n(CI
.ne 7v
.nf
.ta \\nau \\nbu \\ncu \\ndu +\\neu
.tc -
-\\*(gt\\*(gt\\*(gt\\*(gt-
.tc
|Форма\\*(gtНач.\\*(gtНет\\*(gtПрим.\\*(gt|
|вызова\\*(gtзнач.\\*(gtарг.\\*(gt\\*(gt|
.tc -
|\\*(gt\\*(gt\\*(gt\\*(gt|
.tc
.if \\n(.$<5 \
|\\$1\\*(gt\\$2\\*(gt\\$3\\*(gt|
.if \\n(.$>=5 \
|\\$1\\*(gt\\$2\\*(gt\\$3\\*(gt\\$4\\*(gt|
.tc -
-\\*(gt\\*(gt\\*(gt\\*(gt-
.tc
.fi
.br
.da TR
.ta 3nR 5n 17n 20n 24n 28n 32n 36n
.ip "\\*(gt\\n%\\*(gt\\$1" 17 xx
\&\\$\\n(.$
.br
.di
.RT
.in \\n(CI
..
.nr NP 0 1
.de pr
.ds np \\$1
.br
.di PR
.sp 1
.nf
.in +3
..
.de ep
.sp
.fi
.ll -8
.in 3
.in +\w'Пример\ \\n+(NP.\ 'u+1n
.ti -\w'Пример\ \\n(NP.\ 'u+1n
\& Пример \\n(NP.\ \\*(np
.sp
.di
.ne \\n(dnu
.nf
.in 0
.PR
.fi
.ll
..
.de TS
.di TT
..
.de TE
.di
.ne \\n(dnu
.nf
.TT
.fi
..
.de ts
.TS
..
.de te
.TE
..
.de Th          \" Заголовок таблицы символов
---------------------------------------------------
|вводимая | С И М В О Л  |вводимая | С И М В О Л  |
|последов.|              |последов.|              |
---------------------------------------------------
.br
..
.de th          \" Заголовок таблицы символов
---------------------------------------------------
|вводимая |         С И М В О Л                   |
|последов.|                                       |
---------------------------------------------------
.br
..
.de tz
.ce 1000
Продолжение таблицы \\n(NT

.if \\n(TZ=0 .th
.if !\\n(TZ=0 .Th
..
.de sw
.wh 0 tz
..
.de rw
.wh 0
..
.de IT
.lp \\$1
.ll \\$2
.if \\$3=up .wh 0 UT
.if \\$3=dw .wh -4v DT
..
.de ii
\&\fI\\$1\\fR
..
.nr UW 1
.nr U1 0
.nr U2 0
.nr U3 0
.nr U4 0
.nr U5 0
.nr U6 0
.nr U7 0
.nr U8 0
.nr AO 3
.nr TF 1
.nr NT 0 1
.nr CI 0
.\"  nr GL 51n
.nr GL 60n
.nr DI 8
.nr FF 0
.nr FN 0 1
.nr BP 0
.nr EP 4
.nr a 23n
.nr b 31n
.nr c 39n
.nr d 47n
.nr e 05n
.nr f 16
.nr f 23
.nr h 30
.ds gt "\t\"
.ds pi \fIpif\fR
.ds tb \fItbl\fR
.ds Tb \fITbl\fR
.ds Li -o\fIсписок\fR
.ds Na \fIимя\fR
.ds I \\fI
.ds R \\fR
.if \n(mo=1 .ds mo Января
.if \n(mo=2 .ds mo Февраля
.if \n(mo=3 .ds mo Марта
.if \n(mo=4 .ds mo Апреля
.if \n(mo=5 .ds mo Мая
.if \n(mo=6 .ds mo Июня
.if \n(mo=7 .ds mo Июля
.if \n(mo=8 .ds mo Августа
.if \n(mo=9 .ds mo Сентября
.if \n(mo=10 .ds mo Октября
.if \n(mo=11 .ds mo Ноября
.if \n(mo=12 .ds mo Декабря
.if \n(dw=1 .ds dw Воскресенье
.if \n(dw=2 .ds dw Понедельник
.if \n(dw=3 .ds dw Вторник
.if \n(dw=4 .ds dw Среда
.if \n(dw=5 .ds dw Четверг
.if \n(dw=6 .ds dw Пятница
.if \n(dw=7 .ds dw Суббота
.\"
.\"  wh 38v ZA
.wh -\n(EPv ZA
.ll \n(GLu
.lt \n(GLu
.ev 1
.lt \n(GLu
.ll \n(GLu
.ev 2
.lt \n(GLu
.ll \n(GLu
.ev 0
.em ct
