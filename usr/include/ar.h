#ifndef _ar_h_
#       define  _ar_h_

#define ARMAG   0177545
struct  ar_hdr {
	char    ar_name[14];
	long    ar_date;
	char    ar_uid;
	char    ar_gid;
	int     ar_mode;
	long    ar_size;
};

#endif _ar_h_
