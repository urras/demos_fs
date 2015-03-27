#ifndef _sys_dir_h_
#       define  _sys_dir_h_

#ifndef DIRSIZ
#define DIRSIZ  14
#endif
struct  direct
{
	ino_t   d_ino;
	char    d_name[DIRSIZ];
};

#endif  _sys_dir_h_
