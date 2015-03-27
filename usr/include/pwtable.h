#ifndef _pwtable_h_
#       define  _pwtable_h_

/*
 * structure of password file map, each element should have a one-one
 * correspondance
 */

struct pwtable {
	unsigned pwt_uid;       /* user id */
	char    pwt_name[8];    /* user name */
	off_t   pwt_loc;        /* location in password file */
};

#endif  _pwtable_h_
