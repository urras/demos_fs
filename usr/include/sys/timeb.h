#ifndef _sys_timeb_h_
#       define  _sys_timeb_h_

/*
 * Structure returned by ftime system call
 */
struct	timeb {
	time_t	time;
	u_short	millitm;
	short	timezone;
	short	dstflag;
};

#endif  _sys_timeb_h_
