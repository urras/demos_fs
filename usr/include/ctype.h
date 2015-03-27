#ifndef _ctype_h_
#       define  _ctype_h_

#ifndef _sys_code_h_
#       include <sys/code.h>
#endif

#define _U      01
#define _L      02
#define _N      04
#define _S      010
#define _P      020
#define _C      040
#define _X      0100
#define _R      0200

#define _Z      (unsigned)      /* Я все-таки сделаю это, т.к.
				   конструкция isdigit(*cp++) используется
				   слишком часто.  @VG */

extern  char    _ctype_[];      /* in /usr/src/lib/c/gen/ctype_.h */

#define isalpha(c)      ((_ctype_+1)[_Z (c)]&(_U|_L))
#define isupper(c)      ((_ctype_+1)[_Z (c)]&_U)
#define islower(c)      ((_ctype_+1)[_Z (c)]&_L)
#define isdigit(c)      ((_ctype_+1)[_Z (c)]&_N)
#define isxdigit(c)     ((_ctype_+1)[_Z (c)]&(_N|_X))
#define isspace(c)      ((_ctype_+1)[_Z (c)]&_S)
#define ispunct(c)      ((_ctype_+1)[_Z (c)]&_P)
#define isalnum(c)      ((_ctype_+1)[_Z (c)]&(_U|_L|_N))
#define isprint(c)      ((_ctype_+1)[_Z (c)]&(_P|_U|_L|_N))
#define iscntrl(c)      ((_ctype_+1)[_Z (c)]&_C)
#define isascii(c)      (_Z (c)<=0377)

#ifdef Ucode
#define toupper(c)      ((_Z(c))-'a'+'A')
#define tolower(c)      ((_Z(c))-'A'+'a')
#else
#ifdef KOI8
#define toupper(c)      ((_Z(c))^040)
#define tolower(c)      ((_Z(c))^040)
#else KOI8
#define toupper(c)      (isrus(c)?(c)-'Ю'+'ю':(c)-'a'+'A')
#define tolower(c)      (isrus(c)?(c)-'ю'+'Ю':(c)-'A'+'a')
#endif KOI8
#endif Ucode

#define toascii(c)      ((c)&0377)

#define isrus(c)        ((_ctype_+1)[_Z (c)]&_R)

#if defined(pdp11) || defined(vax)
#define islat(c)        ( ((char)((_ctype_+1)[_Z (c)]&(_U|_L|_R)) ) > (char)1 )
		      /* Здесь использовано то, что _R есть
			 знаковый бит ! (на PDP11 '\377' < '\0') @VG */
#else
#define islat(c)        (((((_ctype+1)[_Z(c)]&(_U|_L|_R))+1)&0202)==02)
#endif

#define iscyrill(c)     isrus(c)        /* DEMOS 1 COMPATIBLE */
#define islatin(c)      islat(c)

#endif _ctype_h_
