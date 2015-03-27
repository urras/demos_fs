#ifndef _dir_h_
#   define _dir_h_
#   ifndef _sys_types_h_
#       include <sys/types.h>
#   endif  _sys_types_h_

#ifndef DIRSIZ
#   define DIRSIZ  14
#endif

struct  direct
{
	ino_t   d_ino;
	char    d_name[DIRSIZ];
};

#define D_NAME DIRSIZ
#define dir direct

#endif _dir_h_
