#ifndef _whoami_h_
#       define  _whoami_h_

#define _WHOAMI                 /* so param.h won't include us again */

#define EL85_IPK_1
#define MYNAME  "el85_ipk_1"  /* for uucp */
#define PDP11   23
/* #define NONFP                /* if no floating point unit */

#ifdef  KERNEL
#    include "localopts.h"
#else
#    ifndef _sys_localopts_h_
#        include <sys/localopts.h>
#    endif
#endif

#endif  _whoami_h_
