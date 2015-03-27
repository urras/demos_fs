/*
 * ��������� ��������� ������� ( ������������ ����� whoami.h).
 *
 * $Log:	localopts.h,v $
 * Revision 1.1  86/04/19  15:02:28  avg
 * Initial revision
 * 
 */

#ifndef _sys_localopts_h_
#       define  _sys_localopts_h_

/*
 *      ������� ��������� ����������� � ������������:
 *      *+ - ������ ��������
 *      *- - ������ ���������
 *      *++ - ��������� �� �������������
 *      *-- - �������� �� �������������
 *      *++? - ��������, ���������� �� ��������
 *      *--? - ���������, ��������� �� ��������
 *      *+? - ��������, ���������� �� �����������
 *      *-? - ���������, ��������� �� �����������
 */

/*
 * ��������� �������. ������, ����������� ����� �����������
 * ��� ������������
 */

#define CGL_RTP              /*- �������� 1 ����������������� ������� */
/* #define DISKMON              /*- �������� ���������� �� ������� ��� iostat */
/* #define UCB_GRPMAST          /*- �������������� "������������� ������" */
/* #define UCB_LOGIN            /*- ���� ��������� ����� "login" */
/* #define UCB_QUOTAS           /*- �������� ������������ ������ */
/* #define TEXAS_AUTOBAUD       /*- �������������� ������ �������� tty */

/* #define UCB_UPRINTF             /*+ ��������� �� ������� ���������� user-� */
/* #define UCB_VHANGUP          /*- ��� ������ user-a ���������� HANGUP */
/* #define UCB_LOAD             /*+ ���������� �� �������� �������      */
/* #define UCB_METER            /*- ���������� �� �������� */
/* #define  FXMETER             /*- ���������� �� ���������� �������. text */
#define UCB_RENICE              /*+ renice system call */

/*
 * ���������� ����� �������
 */

/* #define NOKA5                /*-? ������� ������ ��� 0120000 - KA5 �� ������������ ��� ������� � �������� */
/* #define UCB_FRCSWAP          /*-- Force swap on expand/fork */
#define UCB_BHASH            /*+  ��� ��� ������� � ������� */
/* #define UCB_CLIST            /*-  Clists ��������� �� ������� ���� */
#define UCB_DEVERR              /*+ ����������� ��������� �� ������� ��������� */
#define UCB_ECC                 /*+ ��������� ���������� ����� �� ������ */
/* #define BADSECT              /*-? Bad-sector forwarding */
#define UCB_FSFIX               /*+ ���������� ������� ������ ������� �� ����*/
#define UCB_IHASH               /*+? hashed inode table */
#define UCB_ISRCH               /*+? circular inode search */
#define UNFAST                  /*+ ������������ ������� ������ ����� (��� �������� �����) */
#define SMALL                   /*- ����� ������� (����� ���-�������) */
#define IPK_SDADDR              /*- 2-byte ����� �� ����� ��� ����� ������ */
#define NOACCI                  /*-+ �� ���������� ����� ��������� � ����� */
/* #define ACCT                 /*+ ���������� �� �������� */
/* #define INSECURE             /*- �� ������� setuid, setgid ���� ��� ������ � ���� */
/* #define DIAGNOSTIC           /*- �������������� �������� ������ ������� */


/*
 * ������, ��������� �� ��� (��� �������)
 *      ��� ��� type set in whoami.h
 */
#if     PDP11 == GENERIC
#       define  MENLO_KOV
#       define  KERN_NONSEP             /* kernel is not separate I/D */
#else
#   if  PDP11 <= 40 || PDP11 == 60
#       define  MENLO_KOV
#       define  NONSEPARATE
#       define  KERN_NONSEP             /* kernel is not separate I/D */
#   endif
#endif

#if     PDP11 == 44 || PDP11 == 70 || PDP11 == 24 || PDP11 == GENERIC || defined(ENABLE34)
#       define  UNIBUS_MAP
#endif

/*
 *      �������������� �������� ������  �� ������� �������.
 *      ��� �������������� :splfix script ����� �������� ���, �����
 *      ������ spl6 ������������ spl7 (��. conf/:splfix.profile).
 */
/* #define PROFILE       /*-? �������������� ������� */

/* ���������, ��������� ������� �� �������������,
 * ��� ��� ��������� �������������� ���� ��������
 * ��� �������� � ��������������� ��������
 */

/* #define UCB_PGRP             /*-- ��������� �������� �� ������� */
#define UCB_SCRIPT              /*++ ��� ������� ���.������ ���������� #!shell */
/* #define UCB_SUBM             /*-- "submit", �� ����� ������ ��� UCB_JCL */
#define UCB_SYMLINKS            /*++ "����������" ����� ������ */
#define UCB_AUTOBOOT            /*+  ��������� ����� "reboot" */
/* #define OLDTTY               /*--? ������ ����� ������ � ���������� */
#define UCB_NTTY                /*++ ������ � ����������� �� ������   */
#define MENLO_JCL               /*++ Job Control */
#define MENLO_OVLY              /*++ ���������������� ������� */
#define VIRUS_VFORK             /*++ vfork system call */
#define UCB_NKB         1       /*++ "n" KB ������ ����� �� ����� (���� /*, �� 512)*/
/* #define DISPLAY              /*-? 11/70 or 45 display routine */
/* #define MPX_FILS             /*--? �������������� ����� */
/*
 *  UCB_NET - ������� ����������� ���� ������, ������� ����� ���
 *  ����� �����������������, �� ��������!!!
 */
/* #define UCB_NET              /* TCP/IP Kernel */


#endif  _sys_localopts_h_
