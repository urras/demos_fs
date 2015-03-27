#ifndef _symbol_h_
#       define  _symbol_h_

/*
 * Structure of a symbol table entry
 */

struct  symbol {
	char    sy_name[8];
	char    sy_type;
	int     sy_value;
};

#endif  _symbol_h_
