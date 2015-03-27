/*
 * Whoami - локальная конфигурация системы
 *
 * $Log:	whoami.h,v $
 * Revision 1.1  86/04/19  15:03:03  avg
 * Initial revision
 * 
 */

#ifndef _WHOAMI
#define _WHOAMI                 /* so param.h won't include us again */

#define DVK4
#define MYNAME  "LDVK4"       /* for uucp */
#define PDP11   23
/* #define NONFP                /* if no floating point unit */

#ifdef  KERNEL
#    include "localopts.h"
#else
#    include <sys/localopts.h>
#endif
#endif _WHOAMI
