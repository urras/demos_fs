#ifndef _mp_h_
#       define  _mp_h_

#define MINT    struct mint
MINT
{       int     len;
	short   *val;
};
#define FREE(x) {if(x.len!=0) {free((char *)x.val); x.len=0;}}
#ifndef DBG
#define shfree(u)       free((char *)u)
#else
#ifndef _stdio_h_
#       include <stdio.h>
#endif  _stdio_h_
#define shfree(u)       { if(dbg) fprintf(stderr, "free %o\n", u); free((char *)u);}
extern  int     dbg;
#endif  DBG
struct  half
{       short   high;
	short   low;
};
extern  MINT    *itom();
extern  short   *xalloc();

#ifdef  lint
extern  xv_oid;
#define VOID    xv_oid =
#else
#define VOID
#endif

#endif _mp_h_
