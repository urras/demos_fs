#ifndef _sys_reboot_h_
#       define  _sys_reboot_h_

/*
 * Arguments to reboot system call.
 * These are passed to boot program in r4
 * and on to init.
 */
#define RB_ASKNAME      01
#define RB_SINGLE       02
#define RB_NOSYNC       04
#define RB_HALT         010
#define RB_DUMP         020
#define RB_NOFSCK       040
#define RB_POWRFAIL     0100

/*
 * The name of system to boot on automatic reboots.
 */
#define RB_DEFNAME      "rw(0,0)confa"

#endif  _sys_reboot_h_
