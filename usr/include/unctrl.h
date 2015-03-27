#ifndef _unctrl_h_
#       define  _unctrl_h_

/*
 * unctrl.h
 */

extern char     *_unctrl[];

# define        unctrl(ch)      (_unctrl[(unsigned) ch])

#endif _unctrl_h_
