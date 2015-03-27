.de RT          \" Возврат в нормальное состояние
.ta 0.8i 1.6i 2.4i 3.2i 4.0i 4.8i 5.6i 6.4i 7.2i 8.0i
..
.de es
.ds ES \\$1
.if \\n(.$>1 .nr LS 2
..
.de pp          \" Абзац
.fi
.ls \\n(LS
.ce 0
.in \\n(CIu
.sp 1
.ne 2
.ti +\\n(AO
..
.de GN          \" Дай номер пункта
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
.de HO          \" Дай следующий номер
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
.de ZA          \" Отработка заголовка страницы
.ev 1
'sp 2
. \" 'sp 4
. \" .tl 'input line: \\n(.c, file:\\*(Fi'''
'bp
.tl ''%''
.if !`\\*(ES`` \
\{\
'sp 1
.tl ``\\*(ES``
'sp 1
'\}
.ev
..
.de sh                  \" Заголовок с номером  , текстом, общим заголовком
.fi
.ls 1
.ce 0
.HO \\$1                \" Дай номер пункта
.in 0
.if \\$1=1 .if \\n(nl .bp       \" Заголовок 1-го уровня с нов. стран.
.if \\$1=1 .tl '''\\*(Pr'
.if \\n(nl .sp 2        \" Если не начало страницы
.ne 8
.in +3n
.ll -3n
.in +\w'\\*(PN\ 'u
.ti -\w'\\*(PN\ 'u
.if \\$1=1 .ad c       \" Заголовок 1-го уровня по центру   .
\&\\*(PN\\ \\$2
.br
.ad b
.da O[
.ll \\n(GLu-5n
.if \\$1=1 .sp
.ST 4 9 13
.if \\$1=1 .ST 0 4 4
.if \\$1=2 .ST 4 5 9
.if \\$1=3 .ST 4 7 11
.if \\$1=1 \\*(Pr\\c
\&\\*(PN\t\\$2\\a\\t\\n%
.br
.di
.fi
.ST 0 0
.in \\n(CIu
.ll \\n(GLu
.sp 1
..
.de ST
.in \\$3n
.ta \\$2n
.ti \\$1n
..
.de uh                  \" Заголовок без номера
.fi
.ls 1
.ce 0
.in 0
.if \\n(nl .bp          \" Заголовок с нов. стран.
.tl '''\\*(Pr'
.ne 5
.in +5n
.ll -8n
\&\\$1
.br
.da O[
.ll \\n(GLu-5n
.sp
.ST 0 4 0
.if !`\\*(Pr`` \\*(Pr.\ \\c
\&\\$1\\a\\t\\n%
.br
.di
.in \\n(CIu
.ll \\n(GLu
.sp 1
..
.de ct          \" Печать оглавления
.fi
.bp
.sp 2
.ls 1
.ce 1
СОДЕРЖАНИЕ
.ls 1
.ll \\n(GLu
.in 0
.sp 2
.ta \\n(GLu-5n  \\n(GLuR
.O[
..
.de i- \" То же, что ip, но добавляется знак -
.fi
.ce 0
.ls \\n(LS
.in \\n(CIu
.ie \\n(.$>1 .nr XW \\$2
.el .nr XW \\n(DI
.in +\\n(XWn
.sp 1
.ne 3
.ti -\\n(XWn
.ie \\w\(ts\\$1\ \&-\ \(ts>=\\n(XWn \
\{\
\&\\$1
.      br
.      ti -2n
.ta 0
\&-\ \c
.       \}
.       el \
\{\
\&\\$1\h'|\\n(.iu-2n'\c
.ta 0
\&-\ \c
.      \}
..
.de ip
.fi
.ce 0
.ls \\n(LS
.in \\n(CIu
.ie \\n(.$>1 .nr XW \\$2
.el .nr XW \\n(DI
.in +\\n(XWn
.sp 1
.ne 3
.if \\w\(ts\\$1\(ts \
\{\
.       ti -\\n(XWn
.       ie \\w\(ts\\$1\(ts>=\\n(XWn \
\{\
\&\\$1
.		br
.	\}
.       el \&\\$1\h'|\\n(.iu'\c
.\}
..
.de IP
.in \\n(CIu
.nr XW \\w'\\$1\ 'u
.ls \\n(LS
.if \\n(.$>1 .in +\\$2
.in +\\n(XWu
.ti -\\n(XWu
.sp 1
\&\\$1\ \c
..
.de (c
.ne 5
.in 0
.sp
.ls 1
.ce 1000
..
.de )c
.in \\n(CIu
.ce 0
.sp
.ls \\n(LS
..
.de (l
.sp
.ne 5
.nf
.ls 1
.in 0
.ta 8 16 24 32 40 48 56 64 72
..
.de )l
.in \\n(CIu
.fi
.sp
.ls \\n(LS
..
.\" *********************************************************
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
.nr NT 0
.nr CI 0        \" Текущий глобальный отступ
.nr GL 60n      \" Максимальная ширина страницы
.nr DI 5        \" Отступ по умолчанию в перечислениии
.nr LS 1        \" Шаг  печати (1 - 2)
.nr a 2.3i
.nr b 2.9i
.nr c 3.6i
.nr d 4.2i
.nr e 0.5i
.ds gt "\t\" Строка, содержащая табуляцию
.\"
.wh 62v ZA
.ll \n(GLu
.lt \n(GLu
.ev 1
.lt \n(GLu
.ev 0
. \" Макро - начало приложений
.de bb
.ds Pr "ПРИЛОЖЕНИЕ\\ \&
.nr U1 0
..
. \" Макро: tt - примечание, lp - страница без отступа, i- перечисление
.de lp
.pp
.ti 0
..
.de tt
.ip "П_Р_И_М_Е_Ч_А_Н_И_Е."
..
.de np
.i-
..
