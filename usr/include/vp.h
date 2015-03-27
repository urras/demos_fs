#ifndef _vp_h_
#       define  _vp_h_
#       ifndef  _sys_vcmd_h_
#               include <sys/vcmd.h>
#       endif   _sys_vcmd_h_

/* see vp(4) */

int     sppmode[]       = {0400, 0, 0}; /* enter spp */
int     pltmode[]       = {0200, 0, 0}; /* enter plot */
int     prtmode[]       = {0100, 0, 0}; /* enter print */
int     clrcom[]        = {0404, 0, 0}; /* remote clear, enter spp */
int     termcom[]       = {0240, 0, 0}; /* remote terminate, enter plot */
int     ffcom[]         = {0220, 0, 0}; /* plot mode form feed */

#endif  _vp_h_
