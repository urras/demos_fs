.\"*************************************************
.\"*                                               *
.\"*  ******  - M X   P I F   M A C R O S  ******  *
.\"*                                               *
.\"*  Produced for your edification and enjoyment  *
.\"*  by Serg A. Usikow (KIAE,Moscow)              *
.\"*                                               *
.\"*  Version 4.3     First Release: 24 Mar 1985   *
.\"*                                               *
.\"*  Documentation is available.                  *
.\"*                                               *
.\"*************************************************
.if !\n(.V .! "You are using the wrong version of PIF"
.if \np<16 .nr p 23
.if \nl<16 .nr l 78
.if (\nh<3):(\nh>9) \{\
.              nr h 3
.   if \nl>30 .nr h 4
.   if \nl>50 .nr h 5
.   if \nl>70 .nr h 6
.\}
.if (\nt<3):(\nt>9) .nr t \nh
.if (\nn==0)&(\np>33) .nr v 1
.if \nq .nr v 1
.nr %% 1
.ds > \&\t\&
.pl \np
.ll \nl
.lt \nl
.ls 1+\nq
.ev 1
.ll \nl
.lt \nl
.ev
.ev 2
.ll \nl
.lt \nl
.ev
.de '
.ce 0
.\\$1
.ll \\$2
.in \\$3
.ti \\$4
.ta \\$5 \\$6 \\$7 \\$8 \\$9
.if (\\n(.l+10m)<\\n(.i .! "Indent/Line_length"
..
.de !
.br
.di
'in 0
'ti 0
'll \nl
.fl
**** MX_error: \\$1 ****
.fl
..
.de si
.ie !"\\$1"" .nr si \\$1*\nv
.el          .nr si \nv
.sp \\n(si
..
.de sk
.rs
.ie !"\\$1"" .sp \\$1
.el          .sp \nv
..
.de st
.ie !"\\$1"" .ta \\$1 +\\$1 +\\$1 +\\$1 +\\$1 +\\$1 \nlnR
.el          .ta \ntn +\ntn +\ntn +\ntn +\ntn +\ntn \nlnR
..
.de hl
.br
.if !"\\$1"" .in \\$1
.if !"\\$2"" .ll \\$2
.br
\l'\\n(.lu-\\n(.iu\&-'
.br
.if !"\\$1"" .in
.if !"\\$2"" .ll
..
.de lb
.ld \\$1 \\n% \\n%
.if \nd {{\\$1}}
..
.de ld
.ie !"\\*(\\$1"" \{\
.si
*** Dupl. label: <\\$1> ***
.si
.\}
.el \{\
.nr \\$1 \\$3
.ds \\$1 "\\$2
.\}
..
.de c+
.ce 332
..
.de c-
.ce 0
..
.de c=
.ce 1
\\$1
..
.de u+
.ul 332
..
.de u-
.ul 0
..
.de u=
.ul 1
\\$1
..
.de bo
.nr ^b +1
.ls 1
.br
.da @b
'' fi \nl 4 0 4
\\n(^b.\t\\$1
.if !"\\$2"" \{\
.ld \\$2 \\n(^b \\n(^b
.if \nd {{\\$2}}
.\}
.br
.di
.ls 1+\nq
..
.de pf
.nr ^p +1
.br
.da @p
'' fi \nl-3 3 0 3
\\n(^p.\t\\$1\\a\\n%
.if !"\\$2"" \{\
.ld \\$2 \\n(^p \\n%
.if \nd {{\\$2}}
.\}
.br
.di
.sp \nv
.ie \\n(^p<10 '' fi \nl-\nh \nh+\nh -7 7
.el           '' fi \nl-\nh \nh+\nh -8 8
.ie !"\\$1"" Рис.\\n(^p.\t\\$1.
.el \{\
'' fi \nl 0 0 0 0
.ce
Рис.\\n(^p.
.\}
.if !"\\$2"" .if \nd {{\\$2}}
.sp \nv
.ns
..
.de g=
.nr ^g +1
.nr \\$2 0
.ls 1
.ds \\$2 \&\"
.nr g^ \w\\$1
.nr g^ \\n(g^/24+3
.if \\n(g^>(\nl/2) .nr g^ \nl/2
.if \\n(g^>\\n(g#  .nr g# \\n(g^
.br
.da @g
\\!.jq "\\$1" \\\\n(g#
.br
\\\\*(\\$2
.br
.di
.ls 1+\nq
..
.de g+
.ie \\n%>\\n(\\$1 \{\
.ie \\n(\\$1>0 .ds \\$1 "\\*(\\$1, \\n%
.el            .ds \\$1 "\\*(\\$1 \\n%
.nr \\$1 \\n%
.if \nd {{\\$1}}
.\}
.el \{\
.if \nd {{\\$1-none}}
.\}
..
.de th
.nr ^t +1
.nr k# +1
.br
.da @t
'' fi \nl-3 3 0 3
\\n(^t.\t\\$1\\a\\n%
.if !"\\$2"" \{\
.ld \\$2 \\n(^t \\n%
.if \nd {{\\$2}}
.\}
.br
.di
.sp \nv
.ie \\n(^t<10 '' fi \nl-\nh \nh+\nh -8 8
.el           '' fi \nl-\nh \nh+\nh -9 9
Табл.\\n(^t.\t\\$1.
.if !"\\$2"" .if \nd {{\\$2}}
.sp \nv
.ns
.in 0
.nf
.nr k! 0
..
.de kc
\\*(ku
.bp
.ta \nlR
.if \\n(k# \*>Прод.табл.\\n(^t.
\\*(kh
.km
..
.de k1
.if "\\n(k!"1" .kc
.nr k! 0 0
..
.de k2
.if \\n(.t<80 .nr k! 1
..
.de k3
.nr k! 0
.ev 1
'' nf \nl 0 0 0 0
.di kd
..
.de k4
.br
.di
.ev
.ie \\n(.t<120 .kc
.el            .kd
.nr k! 0
..
.rm kh km kt ku
.de ln
.if \\n*>2 \{\
.pp
Документ содержит
.if \\n(s1>1 разделов - \\n(s1,
.if \\n(^p>1 рисунков - \\n(^p,
.if \\n(^t>1 таблиц - \\n(^t,
.if \\n(^b>1 наименований библиографии - \\n(^b,
.if \\n(^g>1 список терминов (\\n(^g наим.),
листов - \\n*.
.\}
..
.de ba
.rr b&
.if "\\$1"0"   .b&      0          0      0      0    \nh    \nh    \nh    \nh
.if "\\$1"+"   .b&   +\nh     \\n(b0 \\n(b1 \\n(b2    \nh \\n(i0 \\n(i1 \\n(i2
.if "\\$1"++"  .b&   +\nh+\nh \\n(b0 \\n(b1 \\n(b2    \nh \\n(i0 \\n(i1 \\n(i2
.if "\\$1"-"   .b& \\n(b1     \\n(b2 \\n(b3      0 \\n(i1 \\n(i2 \\n(i3    \nh
.if "\\$1""    .b& \\n(b1     \\n(b2 \\n(b3      0 \\n(i1 \\n(i2 \\n(i3    \nh
.if "\\n(b&"0" .b&  +\\$1     \\n(b0 \\n(b1 \\n(b2    \nh \\n(i0 \\n(i1 \\n(i2
..
.de b&
.nr b& 1
.nr b0 \\$1
.nr b1 \\$2
.nr b2 \\$3
.nr b3 \\$4
.nr i0 \\$5
.nr i1 \\$6
.nr i2 \\$7
.nr i3 \\$8
..
.ba 0
.de pp
.sp \nv
.pq
..
.de pq
.hy
.rr ^n
.nr i0 \nh
.?s 1
..
.de qp
.sp \nv
.qq "\\$1"
..
.de qq
.nr qq \nh
.if "\\$1"-" .nr qq 0
.?s 2
.if "\\$1"+" ПРИМЕЧАНИЕ.
..
.de lp
.sp \nv
.lq "\\$1"
..
.de lq
.?s 3
.ie !"\\$1"" .nr lq \\$1
.el          .nr lq 0
..
.de ip
.sp \nv
'' nf \nl 0 0 0 0 0 0 0
.di i$
\&\\$1\\t\&
.i+ "\\$2"
.?s 4
\&\\*(i$\c
.if \\w\\$1>=\\n(i0n .br
..
.de iq
'' nf \nl 0 0 0 0 0 0 0
.di i$
\&\\$1\\t\&
.i+ "\\$2"
.?s 4
\&\\*(i$\c
.if \\w\\$1>=\\n(i0n .br
..
.de jp
.sp \nv
'' nf \nl 0 0 0 0 0 0 0
.di i$
\&\\$1\\t\&
.i+ "\\$2"
.?s 5
.ie \\w\\$1>=\\n(i0n \{\
\&\\*(i$\c
.ti -2
\&-\\ \c
.\}
.el \{\
\&\\*(i$-\\ \c
.\}
..
.de jq
'' nf \nl 0 0 0 0 0 0 0
.di i$
\&\\$1\\t\&
.i+ "\\$2"
.?s 5
.ie \\w\\$1>=\\n(i0n \{\
\&\\*(i$\c
.ti -2
\&-\\ \c
.\}
.el \{\
\&\\*(i$-\\ \c
.\}
..
.de i+
.br
.di
.br
.di i&
.ds i$ \&\\*(i$
.br
.di
.rm i&
.if !"\\$1"" .nr i0 \\$1
..
.ds n$ .
.de np
.sp \nv
.nq "\\$1" "\\$2"
..
.de nq
.nr ^n +1
.ie \\n(^n>99 .nr n# 5
.el           .nr n# 4
.if !"\\$2"" .ds n$ \\$2
.iq \&\\n(^n\\*(n$ \\n(n#
.if !"\\$1"" \{\
.ld \\$1 \\n(^n \\n%
.if \nd {{\\$1}}
.\}
..
.de ?s
.ul 0
.rr bb
.nr ? \\$1
.rm ?
'' nf 100 0 0 0 0 0 0
.am ?
..
.de ?e
.if \\n? \{\
.ev 1
.?f
.br
.di ??
.?
.br
.di
.ev
.nr ?l \\n(.d/40
.nr ?n (\\n(dn/40)*(1+\nq)-\nq
.if \nz .ds <t ?n=\\n(?n ?l=\\n(?l
.ie \nq \{\
.if \\n(?n>1  .ne 3
.if \\n(?n==5 .ne 5
.if (\\n(f!-\\n(?l)==(\\n(?n-1) .ch !e \\n(f!-2
.if (\\n(f!-\\n(?l)==(\\n(?n-2) .ch !e \\n(f!-2
.if (\\n(f!-\\n(?l)==(\\n(?n-3) .ch !e \\n(f!-2
.\}
.el \{\
.if \\n(?n>1 .ne 2
.if \\n(?n==3 .ne 3
.if (\\n(f!-\\n(?l)==(\\n(?n-1) .ch !e \\n(f!-1
.\}
.nf
.??
.\}
.nr ? 0
..
.de ?z
.ul 0
.rr bb
.nr ? \\$1
.?f
..
.de ?f
.if \\n?==1 '' fi \nl     \\n(b0          \\n(b0+\nh        0
.if \\n?==2 '' fi \nl-\nh \\n(b0+\nh      \\n(b0+\nh+\\n(qq 0
.if \\n?==3 '' fi \nl     \\n(b0          \\n(b0+\\n(lq     0
.if \\n?==4 '' fi \nl     \\n(b0+\\n(i0   \\n(b0            \\n(i0
.if \\n?==5 '' fi \nl     \\n(b0+\\n(i0+2 \\n(b0            \\n(i0
.if \\n?==9 '' fi \\n(,l  \\n(,i          +0                0
.nr ? 0
.nr ,i \\n(.i/24
.nr ,l \\n(.l/24
..
.if !\nu .rm ?e
.if !\nu .rn ?z ?s
.de [
.ul 0
.rr bb
.sp \nv
.ls 1
.nf
.ll \\n(,l
.in \\n(,i+\nh
.ta \nlnR
.ds f [No_name (possible only 1 backslash)]
.br
.di ?
.if !"\\$1"" \{\
.nr ^f +1
\\!.ld \\$1 \\\\n(^f \\\\n%
\\!.ie \nd .ds f \\t(\\\\n(^f{{\\$1}})
\\!.el     .ds f \\t(\\\\n(^f)
.\}
..
.de ]
.br
.di
.in 0
.nr ?n \\n(dn/40
.ne \\n(?n
.nf
.?
.br
.ls 1+\nq
.sp \nv+\nq
.ns
.ie (\\n?==1):(\\n?==3) .lp
.el .?s 9
..
.de |
.(
\&\\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9
.)
..
.de (
.ul 0
.rr bb
.sp \nv
.ls 1
.nf
.ll \\n(,l
.in \\n(,i
.if !"\\$1"l" .in +\nh
.if "\\$1"L" .in 0
.st
.di ?
..
.de )
.br
.di
.in 0
.nr ?n \\n(dn/40
.ie "\\$1"c" .ne \\n(?n
.el .if \nu \{\
.nr ?l \\n(.d/40
.if \\n(?n>=2 .ne 2
.if \\n(?n==3 .ne 3
.if (\\n(f!-\\n(?l)==(\\n(?n-1) .ch !e \\n(f!-1
.\}
.nf
.?
.br
.ls 1+\nq
.sp \nv+\nq
.ns
.ie (\\n?==1):(\\n?==3) .lp
.el .?s 9
..
.de {
.ev 2
.ls 1
.nr _k +1
.ds _k _\\n(_k
.if \\n(_k=9  ****** KEEP_NUMBER_OVERFLOW *******
'' nf \nl 0 0 \nh +\nh +\nh +\nh +\nh
.di \\*(_k
..
.de }
.br
.di
.ev
..
.de _p
.nr __ +1
.ev 2
.ls 1
'' nf \nl 0 0 \nh +\nh +\nh +\nh +\nh
._1
.br
.nr _k -1
.rm _1
.rn _2 _1
.rn _3 _2
.rn _4 _3
.rn _5 _4
.rn _6 _5
.rn _7 _6
.rn _8 _7
.rn _9 _8
.rm _9
.nr __ -1
.rs
.sp 1+\nv
.ns
.ev
..
.af sh I
.ds s# "ГЛАВА \\n(sh.
.de sh
.nr sh +1
.s$ 0 3-\\nb-\\nb-\\nb 8
.s+ 0 0
.sp \nv
\\*(s#
.br
.ie \nd \\$1..{{\\$2}}\\a\\t\\n%
.el \\$1\\a\\t\\n%
.s* "" "" \\n(m0
\\*(s#
.sp \nv
\\$1
.sp 1+\nv
.s=
.nr bb 1
..
.de s0
.s$ 0 3-\\nb-\\nb-\\nb 8
.s+ 0 0
.sp \nv
.ie \nd \\$1..{{\\$2}}\\a\\t\\n%
.el \\$1\\a\\t\\n%
.s* "" "" \\n(m0
\\$1
.s=
.nr bb 1
..
.de s1
.s$ 1 2-\\nb 8 \" dept_number skip_in_text lines_more_then
.s+ 4 3+\\n(o1 \" ind_in_cont for_numb
.sp \nv
.ie \nd \\n(s1.\*>\\$1..{{\\$2}}\\a\\t\\n%
.el \\n(s1.\*>\\$1\\a\\t\\n%
.s* \\n(s1 "\\$2" \\n(m1
\\*(s@\\$1
.s=
.nr bb 1
..
.de s2
.s$ 2 0 6
.s+ 4+6+\\n(o1 6+\\n(o1
.ie \nd \\n(s1.\\n(s2.\*>\\$1..{{\\$2}}\\a\\t\\n%
.el \\n(s1.\\n(s2.\*>\\$1\\a\\t\\n%
.s* \\n(s1.\\n(s2 "\\$2" \\n(m2
\\*(s@\\$1
.s=
..
.de s3
.s$ 3 0 6
.s+ 4+6+2+\\n(o1+\\n(o2 6+2+\\n(o1+\\n(o2
.ie \nd \\n(s1.\\n(s2.\\n(s3.\t\\$1..{{\\$2}}\\a\\t\\n%
.el \\n(s1.\\n(s2.\\n(s3.\t\\$1\\a\\t\\n%
.s* \\n(s1.\\n(s2.\\n(s3 "\\$2" \\n(m2
\\*(s@\\$1
.s=
..
.de s4
.s$ 4 0 6
.s+ 4+6+2+2+\\n(o1+\\n(o2+\\n(o3 6+2+2+\\n(o1+\\n(o2+\\n(o3
.ie \nd \\n(s1.\\n(s2.\\n(s3.\\n(s4.\t\\$1..{{\\$2}}\\a\\t\\n%
.el \\n(s1.\\n(s2.\\n(s3.\\n(s4.\t\\$1\\a\\t\\n%
.s* \\n(s1.\\n(s2.\\n(s3.\\n(s4 "\\$2" \\n(m2
\\*(s@\\$1
.s=
..
.de s$
.br
.ul 0
.ft R
.if (\\$1<2)&(\\nb)&(\\n(bb==0) \{\
.rs
.if (\\n(.d/40)>(\\n(!s-1) .bp
.\}
.nr s\\$1 +1
.nr s$ \\$1+1
.nr s\\n(s$ 0 1
.ie (\\n(s\\$1)>9 .nr o\\$1 1
.el               .nr o\\$1 0
.nr s0 +1
.sp \nv+\\$2
.rs
.sp 1
.ie \nq .ne \\$3+\\$3
.el     .ne \\$3
..
.de s+
.if !"\\n(.z"" .! "Unclosed block (\\n(.z)"
.ls 1
.br
.da @c
'' fi \nl-4 \\$1 -\\$2 \\$2
..
.de s*
.br
.di
.ls 1+\nq
.if !"\\$2"" .ld \\$2 \\$1 \\n%
.nr s@ (\w\\$1.u/24)+1
.if \\n(s@==2 .nr s@ 0
.if \\$3==0 '' fi \nl         \\n(s@     -\\n(s@ \\n(s@
.if \\$3==1 '' fi \nl-\nh     \\n(s@+\nh -\\n(s@ \\n(s@
.if \\$3==2 '' fi \nl-\nh-\nh \nh+\nh    \nh+\nh \\n(s@
.if \\$3==2 .ad c
.nr s@ 0-(\w\\$1.u/24)
.ie \\$3==0 .ds s@ \\$1.\h'\\n(s@'\\$1.\h'\\n(s@'\\$1.\h'\\n(s@'\t
.el         .ds s@ \\$1.\t
.nh
.if \\n_ .u+
..
.de s=
.u-
.br
.ad b
.ba 0
.pp
.ns
..
.de z1
.if \\n(s1==0 .nr s1 0 1
.z+ \\n+(s1 "\\$1" s2
..
.de z2
.z+ \\n(s1.\\n+(s2 "\\$1" s3
..
.de z3
.z+ \\n(s1.\\n(s2.\\n+(s3 "\\$1" s4
..
.de z4
.z+ \\n(s1.\\n(s2.\\n(s3.\\n+(s4 "\\$1" s5
..
.de z5
.z+ \\n(s1.\\n(s2.\\n(s3.\\n(s4.\\n+(s5 "\\$1" s6
..
.de z+
.pp
\\$1.
.if !"\\$2"" \{\
.ld \\$2 \\$1 \\n%
.if \nd {{\\$2}}
.\}
.nr \\$3 0 1
..
.em @e
.af mo i
.de @e
.rm ?e
.rn ?z ?s
.rs
.if !"\\n(.z"" .! "Unclosed block (\\n(.z)"
.ls 1
.if \\n(^p \{\
.sp 6
.ne 6
.if \\n%>6 .bp
'' nf \nl 0 0 \nlR
.c= "Список иллюстраций"
.sp 1+\nv
.@p
.\}
.if \\n(^t \{\
.sp 6
.ne 6
.if \\n%>6 .bp
'' nf \nl 0 0 \nlR
.c= "Список таблиц"
.sp 1+\nv
.@t
.\}
.if \\n(^g \{\
.sp 6
.ne 6
.if \\n%>6 .bp
'' nf \nl 0 0 0
.c= "Список терминов"
.sp 1+\nv
.@g
.\}
.if \\n(^b \{\
.sp 6
.ne 6
.if \\n%>6 .bp
'' nf \nl 0 0 0
.c= Литература
.sp 1+\nv
.@b
.\}
.rm _0
.nr _k 0
.if \nc .ex
.if \\n: \{\
.nr :: 1
.rr f=
.ch !f \\n(!f
.ch !e \np+1
'' nf \nl 0 0 0 0 0
.rs
.if (\ne)&(\\n(%%%2==1) .bp
.nr * \\n%
.bp 1
.if !\\n(:t \{\
.wh \\n(!f-1 !a
.;t
.rs
.bp
.rm !a
.\}
.if !\\n(:a \{\
.;a
.nr :a 1
.rs
.bp
.\}
'' nf \nl 0 0 \nl-4R \nlR
.if !\\n(:c \{\
.c= СОДЕРЖАНИЕ
.sp 1+\nv
.@c
.nr :c 1
.\}
.if \\nz \{\
.rm !t !f !b !e !a
.'' nf \nl 0 0 0 0 0 0 0
******Debug start******
.bp
.eo
.c2 ,
.cc ,
**********title**********
,;t
**********annot**********
,;a
********contents*********
,;c
*************************
,ab
.\}
.bp
.bp
.\}
.if \\n(s0 \{\
.sp 6
.ne 6
.if \\nb:(\\n%>6) .bp
'' nf \nl 0 0 \nl-4R \nlR
.c= СОДЕРЖАНИЕ
.sp 1+\nv
.@c
.rm <b =b >b
.ds =b "Mx - копи райт!
.ds <b \n(yr.\n(mo.\n(dy.
.ds >b <\\*(us>
.\}
..
.\""""""""""""" Footnote """""""""""""""""""""""
.de f=  \"""" footnote """"
.f+ \\$2
\&\\$1
.f-
..
.de f+  \"""" footnote start """"
.ch !e \n(!e
.if \\n?>0 \{\
.?f
.?
.rm ? ??
.\}
*\\n+(f^)\\$1
.ev 1
.ls 1
.br
.da f&
'' fi \nl 4 0 4
*\\n(f^)\t\c
..
.de f- \"""" footnote end """"
.br
.di
.f# 1
.ev
..
.de f# \" change !f position
.nr f= \\n(dn/40+\\n(f= \" summary divert = footsize
.nr f! \\n(!f-\nf+1-\\n(f=
.if (\\$1==1)&((\\n(nl/40)>=\\n(f!) .nr f! (\\n(nl/40)+1
.if \\n(f!<((\\np/3)*2)             .nr f! (\\np/3)*2
.if (\\$1==0)&(\\n(f===0)           .nr f! \\n(!f
.ch !f \\n(f!
..
.\""""""""""""" TOP & BOTTOM """""""""""""""""""
.de !f \"""" print footnote """"
.ev 1
.rs
.if \\n(ex==0 .nr f^ 0 1 \" clear foot numb if not espd
'' nf \nl 0 0 0
.if (\\n(f===0)&(\nz) ++++\\n(nl++++
.if \\n(f= \{\
.if \nq .sp
________________
.f&
\\!.ns
.ls 1
.sp 1
.br
.di
.br
.di f&
.f$
.br
.di
.f# 0
.\}
.rs
.bp
..
.de !b \"""" bottom - end footnote """"
.if \nd .ds <b "\\*(f.
.lt \nl
.if !\ns \{\
.sp 1
.ie (\\n%>1) \{\
.ie \ne \{\
.       if o .tl \\*(<b\\*(=b\\*(>b
.       if e .tl \\*(>b\\*(=b\\*(<b
.\}
.el .tl \\*(<b\\*(=b\\*(>b
.\}
.el .sp
.\}
.if \\n(f= \{\
.nr f= 0 0
.br
.di f$
.ns
.\}
.ie \ne .if (\\n(%%%2==0)&(\\n(:t)&(\\n(:a)&(\\n(:c) .ex
.el     .if               (\\n(:t)&(\\n(:a)&(\\n(:c) .ex
.nr %% +1
..
.de !t \"""" top of page """"
.fl
.if \nd .ds <t "\\*(f.
.ch !e \n(!e
.if \nk .hl
.sp \nv
.if \\n%>1 \{\
.ie \ne \{\
.       if o .tl \\*(<t\\*(=t\\*(>t
.       if e .tl \\*(>t\\*(=t\\*(<t
.\}
.el .tl \\*(<t\\*(=t\\*(>t
.if \ng \{\
.sp \nv
.tl \\*(uu
.\}
.sp 1+\nv+\nq
.\}
.ev
.if !\\n(:: .ns
.if ((\\n(_k>0)&(\\n(__==0)) ._p
..
.\"""" init """"
.wh  0 !t \"top
.wh -3 !b \"bot
.if \ns .ch !b -1
.  nr !f \np-5 \"foot
.  wh \n(!f !f
.  if \nf .nr !f +1
.  if \ns .nr !f +2
.  if \nq .nr !f -1
.  nr f! \n(!f
.  ch !f \n(f!
.  nr f^ 0 1
.nr !e \np+1
.wh \n(!e !e
.de !e
'sp 1+\nq
..
.de !a
.br
.if \\n(:t==2 .di :0
.if \\n(:a==2 .di :0
.br
..
.ie \ns .ds =t %
.el     .ds =b %
.de es
.ls 1
'' nf \nl 0 0 0 0 0 0 0
.nr : 1
.if !"\\$1"" .ds uu "\\$1
.br
.di ;t
\\!.ls 1
\\!.' nf \nl 0 0 0 0 0 0 0
\\!.nr :t 2
..
.de an
\\!.sk 100

\\!.nr :t 1
\\!.br
\\!.di
.br
.di
.nr ;t \\n(dn/40
.br
.di ;a
\\!.ls 1+\nq
\\!.' nf \nl 0 0 0 0 0 0 0
\\!.rn ?s ?t
\\!.de ?s
\\!.nr ? \\\\\\\\$1
\\!.?f
\\!..
.if !"\\$1"-" \{\
\\!.c= АННОТАЦИЯ
\\!.sp \nv-\nq

\\!.pq
.\}
..
.de pd
.if !"\\n(.z";a" .an -
.if "\\$1"+" \\!.ln
\\!.rn ?t ?s
\\!.rm ? ??
\\!.rr ?
\\!.ls 1
.br
.di
.'' nf \nl 0 0 0 0 0 0 0
.br
.di :0
.;a
.br
.di
.nr ;a \\n(dn/40
.br
.di ;c
'' nf \nl 0 0 0 0 0 0 0
.c= САДИРЖАНИЕ
.sp 1+\nv
.so /tmp/mx.\nn.y
.br
.di
.nr ;c \\n(dn/40-2-\nv
.\" page offset:
.ie \\n(;t>0 .nr :j +1
.el .rm ;t
.ie \\n(;a>0 .nr :j +0
.el .rm ;a
.nr :j +(\\n(;a/\\n(!!)
.if (\\n(;a%\\n(!!)>0 .nr :j +1
.nr :j +(\\n(;c/\\n(!!)
.if (\\n(;c%\\n(!!)>0 .nr :j +1
.if (\ne)&(\\n(:j%2==1) .nr :j +1
.nr % +\\n(:j
.if \\n(;t==0 .nr :t 1
.if \\n(;a==0 .nr :a 1
.if \\n(;c==0 .nr :c 1
.ls 1+\nq
.if \nz .tm !!=\\n(!! !s=\\n(!s !f=\\n(!f :j=\\n(:j  ;t=\\n(;t ;a=\\n(;a ;c=\\n(;c
.ev 1
.ie \ne \{\
.       if o .tl \\*(<t\\*(=t\\*(>t
.       if e .tl \\*(>t\\*(=t\\*(<t
.\}
.el .tl \\*(<t\\*(=t\\*(>t
.if \ng \{\
.sp \nv
.tl \\*(uu
.\}
.sp 1+\nv+\nq
.\}
.ev
.ns
..
.\"""""""""""""" псевдо оглавл """""""""""""""""
.de xh
.sp \nv
'' fi \nl-4 0 0 0 0
\\*(s#
.br
\\$1
.if \nd ..{{\\$2}}
.sp 1+\nv
..
.de x0
.sp \nv
'' fi \nl-4 0 0 0 0
\\$1
.if \nd ..{{\\$2}}
..
.de x1
.sp \nv
'' fi \nl-4 4 4 0 0
\\$1
.if \nd ..{{\\$2}}
..
.de x2
'' fi \nl-4 10 10 0 0
\\$1
.if \nd ..{{\\$2}}
..
.de x3
'' fi \nl-4 13 13 0 0
\\$1
.if \nd ..{{\\$2}}
..
.de x4
'' fi \nl-4 15 15 0 0
\\$1
.if \nd ..{{\\$2}}
..
.\""""test page size""""
.nr !s 1+\nk+\ng+1+\nv+\ng+1+\nv+\nq
.nr !! \n(!f-\n(!s+1
.if \n(!!<12 \{\
'' nf \nl 0 0 0 0 0
MX: Too little summary page size [\n(!!].
Try with another combination of keys.
.ab
.\}
.de to
.ie !"\\$1"" .nr to ((\\n(!f-1)/12)*\\$1
.el          .nr to \\n(!f-2
.nr to \\n(to-(\\n(.d/40)-1
.if \\n(to>0 .sp \\n(to
..
.de +e
'' nf \nl 0 0 0 0 0 0 0
.rs
.ls 1
.if !"\\$1"" .ds uu "\\$1
..
.de +a
.rs
.if ((\\n(.d/40)>(\\n(!s-1)) .bp
.ls 1+\nq
.if !"\\$1"-" \{\
.c= АННОТАЦИЯ

.sp \nv-\nq
.pq
.\}
..
.de +p
'' nf \nl 0 0 0 0 0 0 0
.rs
.if ((\\n(.d/40)>(\\n(!s-1)) .bp
..
.if !\nj \{\
.rn +e es
.rn +a an
.rn +p pd
.\}
