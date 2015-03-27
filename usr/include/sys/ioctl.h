#ifndef _sys_ioctl_h_
#       define  _sys_ioctl_h_

/*
 * ioctl definitions, and special character and local tty definitions
 */
#include <sys/code.h>
#include <sys/localopts.h>

struct tchars {
	char    t_intrc;        /* interrupt */
	char    t_quitc;        /* quit */
	char    t_startc;       /* start output */
	char    t_stopc;        /* stop output */
	char    t_eofc;         /* end-of-file */
	char    t_brkc;         /* input delimiter (like nl) */
};

struct ltchars {
	char    t_suspc;        /* stop process signal */
	char    t_dsuspc;       /* delayed stop process signal */
	char    t_rprntc;       /* reprint line */
	char    t_flushc;       /* flush output (toggles) */
	char    t_werasc;       /* word erase */
	char    t_lnextc;       /* literal next character */
};

/*
 * local mode settings
 */
#define LCRTBS  0000001         /* correct backspacing for crt */
#define LPRTERA 0000002         /* printing terminal \ ... / erase */
#define LCRTERA 0000004         /* do " \b " to wipe out character */
#define LTILDE  0000010         /* IIASA - hazeltine tilde kludge */
#define LZNAK   0000010         /* IPK - Russian case */
#define LMDMBUF 0000020         /* IIASA - start/stop output on carrier intr */
#define LLITOUT 0000040         /* IIASA - suppress any output translations */
#define LTOSTOP 0000100         /* send stop for any background tty output */
#define LFLUSHO 0000200         /* flush output sent to terminal */
#define LNOHANG 0000400         /* IIASA - don't send hangup on carrier drop */
/* #define LETXACK 0001000         /* IIASA - diablo style buffer hacking */
#define LESCH   0001000         /* IPK - \b turns to ESC-H */
#define LCRTKIL 0002000         /* erase whole line on kill with " \b " */
#define LINTRUP 0004000         /* interrupt on every input char - SIGTINT */
#define LCTLECH 0010000         /* echo control characters as ^X */
#define LPENDIN 0020000         /* tp->t_rawq is waiting to be reread */
#define LDECCTQ 0040000         /* only ^Q starts after ^S */
#define LNOFLSH 0100000         /* don't flush output on signals */

/* local mode extension (t_xflags) */
#ifdef  TEXAS_AUTOBAUD
#define LIMAGE  01              /* ignoring framing errors for autobauding */
#endif

/* local state */
#define LSBKSL  01              /* state bit for lowercase backslash work */
#define LSQUOT  02              /* last character input was \ */
#define LSERASE 04              /* within a \.../ for LPRTRUB */
#define LSLNCH  010             /* next character is literal */
#define LSTYPEN 020             /* retyping suspended input (LPENDIN) */
#define LSCNTTB 040             /* counting width of tab; leave LFLUSHO alone */
#define LIREG   0100            /* RUS/LAT input register */
#define LOREG   0200            /* RUS/LAT output register */

/*
 * tty ioctl commands
 */
#define TIOCGETD        (('t'<<8)|0)    /* get line discipline */
#define TIOCSETD        (('t'<<8)|1)    /* set line discipline */
#define TIOCHPCL        (('t'<<8)|2)    /* set hangup line on close bit */
#define TIOCMODG        (('t'<<8)|3)    /* modem bits get (???) */
#define TIOCMODS        (('t'<<8)|4)    /* modem bits set (???) */
#define TIOCGETP        (('t'<<8)|8)    /* get parameters - like old gtty */
#define TIOCSETP        (('t'<<8)|9)    /* set parameters - like old stty */
#define TIOCSETN        (('t'<<8)|10)   /* set params w/o flushing buffers */
#define TIOCEXCL        (('t'<<8)|13)   /* set exclusive use of tty */
#define TIOCNXCL        (('t'<<8)|14)   /* reset exclusive use of tty */
#define TIOCFLUSH       (('t'<<8)|16)   /* flush buffers */
#define TIOCSETC        (('t'<<8)|17)   /* set special characters */
#define TIOCGETC        (('t'<<8)|18)   /* get special characters */
#define TIOCIOANS       (('t'<<8)|20)
#define TIOCSIGNAL      (('t'<<8)|21)
#define TIOCUTTY        (('t'<<8)|22)

/* IPK fix, from 90 down    @VG */
#define TIOCGETA        (('t'<<8)|90)   /* get all of parameters */
#define TIOCSETA        (('t'<<8)|91)   /* set all of parameters */
#define TIOCSETB        (('t'<<8)|92)   /* -- / --, but not flush buffers */

/* locals, from 127 down */
#define TIOCLBIS        (('t'<<8)|127)  /* bis local mode bits */
#define TIOCLBIC        (('t'<<8)|126)  /* bic local mode bits */
#define TIOCLSET        (('t'<<8)|125)  /* set entire local mode word */
#define TIOCLGET        (('t'<<8)|124)  /* get local modes */
#define TIOCSBRK        (('t'<<8)|123)  /* set break bit */
#define TIOCCBRK        (('t'<<8)|122)  /* clear break bit */
#define TIOCSDTR        (('t'<<8)|121)  /* set data terminal ready */
#define TIOCCDTR        (('t'<<8)|120)  /* clear data terminal ready */
#define TIOCGPGRP       (('t'<<8)|119)  /* get pgrp of tty */
#define TIOCSPGRP       (('t'<<8)|118)  /* set pgrp of tty */
#define TIOCSLTC        (('t'<<8)|117)  /* set local special characters */
#define TIOCGLTC        (('t'<<8)|116)  /* get local special characters */
#define TIOCOUTQ        (('t'<<8)|115)  /* number of chars in output queue */
#define TIOCSTI         (('t'<<8)|114)  /* simulate a terminal input character*/
#define TIOCNOTTY       (('t'<<8)|113)  /* get rid of tty association */
#define TIOCPKT         (('t'<<8)|112)  /* on pty: set/clear packet mode */
#define         TIOCPKT_DATA            0x00    /* data packet */
#define         TIOCPKT_FLUSHREAD       0x01    /* flush packet */
#define         TIOCPKT_FLUSHWRITE      0x02    /* flush packet */
#define         TIOCPKT_STOP            0x04    /* stop output */
#define         TIOCPKT_START           0x08    /* start output */
#define         TIOCPKT_NOSTOP          0x10    /* no more ^S, ^Q */
#define         TIOCPKT_DOSTOP          0x20    /* now do ^S ^Q */
#define TIOCSTOP        (('t'<<8)|111)  /* stop output, like ^S */
#define TIOCSTART       (('t'<<8)|110)  /* start output, like ^Q */
#define TIOCMSET        (('t'<<8)|109)  /* set all modem bits */
#define TIOCMBIS        (('t'<<8)|108)  /* bis modem bits */
#define TIOCMBIC        (('t'<<8)|107)  /* bic modem bits */
#define TIOCMGET        (('t'<<8)|106)  /* get all modem bits */
#define TIOCREMOTE      (('t'<<8)|105)  /* remote input editing */
#ifdef  TEXAS_AUTOBAUD
#define TIOCSIMG        (('t'<<8)|104)  /* set image mode */
#define TIOCCIMG        (('t'<<8)|103)  /* clear image mode */
#endif

#define OTTYDISC        0               /* old, v7 std tty driver */
#define NTTYDISC        1               /* new tty discipline */
#define NETLDISC        2               /* line discip for berk net */
#ifdef  OLDTTY
#       define  DFLT_LDISC      OTTYDISC        /* default disc. on initial open */
#else
#       define  DFLT_LDISC      NTTYDISC        /* default disc. on initial open */
#endif

#define FIOCLEX         (('f'<<8)|1)
#define FIONCLEX        (('f'<<8)|2)
/* another local */
#define FIONREAD        (('f'<<8)|127)  /* get # bytes to read */

#ifdef  UCB_NET
#define FIONBIO         (('f'<<8)|126)
#define FIOASYNC        (('f'<<8)|125)
#define SIOCDONE        (('s'<<8)|0)    /* shutdown read/write on socket */
#define SIOCSKEEP       (('s'<<8)|1)    /* set keep alive */
#define SIOCGKEEP       (('s'<<8)|2)    /* inspect keep alive */
#define SIOCSLINGER     (('s'<<8)|3)    /* set linger time */
#define SIOCGLINGER     (('s'<<8)|4)    /* get linger time */
#define SIOCSENDOOB     (('s'<<8)|5)    /* send out of band */
#define SIOCRCVOOB      (('s'<<8)|6)    /* get out of band */
#define SIOCATMARK      (('s'<<8)|7)    /* at out of band mark? */
#define SIOCSPGRP       (('s'<<8)|8)    /* set process group */
#define SIOCGPGRP       (('s'<<8)|9)    /* get process group */
#define SIOCADDRT       (('s'<<8)|10)   /* add a routing table entry */
#define SIOCDELRT       (('s'<<8)|11)   /* delete a routing table entry */
#define SIOCCHGRT       (('s'<<8)|12)   /* change a routing table entry */
#endif

/***** ����� ��� RW - "�������������" ���� *******/

#define RWIO_CMP   (('r'<<8)|0) /*��������� ���������������*/
#define RWIO_WCON  (('r'<<8)|1) /*��������� �������� ������*/
#define RWIO_WCOFF (('r'<<8)|2) /*���������� �������� ������*/

/***** FD - ������ ���� *******/
/***** ��������� ������ ��� ioctl �������������� *******/

struct FD_FORMAT_BOX            /* ��������� �������������� */
{
int     sizetrk;                /* ��� ������� (������ �����) =2 ��� 512 */
int     firsttrk;               /* ��������� ������� */
int     numbtrk;                /* ����������� ������� */
};

/***** LINE PRINTER ***** by @VG */

#define LPIOSETP        (('L'<<8)|0)    /* set lp modes */
#define LPIOGETP        (('L'<<8)|1)    /* get lp modes */

/* Arg is a following structure : */
struct lpmodes {
	short   lpm_flags;              /* ����� */
	short   lpm_maxcol;             /* ������ ������ */
	short   lpm_ejline;             /* ����� ����� */
	short   lpm_inch;               /* ������ �������� � ������ */
	short   lpm_skip;               /* ������� �� ���� �������� */
	short   lpm_shrift;             /* ����� */
	short   lpm_vint;               /* �������� */
	short   lpm_left;               /* ����� ���� */
};

/* ����� */
#define LPOPEN      01   /* ���� ������ */
#define LPON        02   /* ���� �������� */
#define LPCAP       04   /* ���� ��������� ����� */
#define LPRAW      010   /* ���������� ����� */
#define LPCYRILL   020   /* ���� ��������� */
#define LPSISO     040   /* SISO - ����� ������������ ��������� */
#define LPZNAK    0100   /* ���� LPCAP - ���� �� ������� ������� ����,
				 ����� - ���� �� ������ ������� ���� */
#define LPCLEAR   0200   /* ������� ������ � ��������� */
#define LPROB     0400   /* ������� ���� "Robotron 6329" */
#define LPLX     01000   /* ������� ���� "Epson LX-800" */
#define LPFX     02000   /* ������� ���� "Epson FX-800" */
#define LPD100   04000   /* ������� ���� "D100-M" */
#define LPINIT  010000   /* ������������� ������*/
#define LPHTB   020000   /* ������ ��������� ���������*/
#define LPINCH  040000   /* ��������� ����� �������� � ������*/
#define LPNLQ  0100000   /* ����� ������������� ������*/

#endif  _sys_ioctl_h_
