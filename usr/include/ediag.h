#ifndef _ediag_h_
#       define  _ediag_h_

#       ifndef ediag

  extern short _ediag;
# define ediag(e,r) (_ediag?(e):(r))

#       endif  ediag

#endif  _ediag_h_
