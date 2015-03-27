#ifndef _sys_vcmd_h_
#       define  _sys_vcmd_h_

#define	VPRINT		0100
#define	VPLOT		0200
#define	VPRINTPLOT	0400

#define	GETSTATE	(('v'<<8)|0)
#define	SETSTATE	(('v'<<8)|1)
#define	BUFWRITE	(('v'<<8)|2)	/* async write */

#endif  _sys_vcmd_h_
