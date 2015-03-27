/*
 * Локальные параметры системы ( подключаются через whoami.h).
 *
 * $Log:	localopts.h,v $
 * Revision 1.1  86/04/19  15:02:28  avg
 * Initial revision
 * 
 */

#ifndef _sys_localopts_h_
#       define  _sys_localopts_h_

/*
 *      Приняты следующие обозначения в комментариях:
 *      *+ - обычно включены
 *      *- - обычно выключены
 *      *++ - выключать не рекомендуется
 *      *-- - включать не рекомендуется
 *      *++? - включены, выключение не работает
 *      *--? - выключены, включение не работает
 *      *+? - включены, выключение не проверялось
 *      *-? - выключены, включение не проверялось
 */

/*
 * Настройка системы. Режимы, открывающие новые возможности
 * для пользователя
 */

#define CGL_RTP              /*- Возможен 1 суперприоритетный процесс */
/* #define DISKMON              /*- собирать статистику по буферам для iostat */
/* #define UCB_GRPMAST          /*- поддерживается "администратор группы" */
/* #define UCB_LOGIN            /*- есть системный вызов "login" */
/* #define UCB_QUOTAS           /*- включено квотирование дисков */
/* #define TEXAS_AUTOBAUD       /*- автоматический подбор скорости tty */

/* #define UCB_UPRINTF             /*+ сообщения об ошибках посылаются user-у */
/* #define UCB_VHANGUP          /*- При выходе user-a посылается HANGUP */
/* #define UCB_LOAD             /*+ статистика по загрузке системы      */
/* #define UCB_METER            /*- статистика по подкачке */
/* #define  FXMETER             /*- статистика по вторичному использ. text */
#define UCB_RENICE              /*+ renice system call */

/*
 * Внутренние флаги системы
 */

/* #define NOKA5                /*-? система меньше чем 0120000 - KA5 не используется при доступе к таблицам */
/* #define UCB_FRCSWAP          /*-- Force swap on expand/fork */
#define UCB_BHASH            /*+  хэш при доступе к буферам */
/* #define UCB_CLIST            /*-  Clists выносится из адресов ядра */
#define UCB_DEVERR              /*+ развернутуе сообщения об ошибках устройств */
#define UCB_ECC                 /*+ Коррекция исправимых оибок на дисках */
/* #define BADSECT              /*-? Bad-sector forwarding */
#define UCB_FSFIX               /*+ Улучшенный порядок сброса буферов на диск*/
#define UCB_IHASH               /*+? hashed inode table */
#define UCB_ISRCH               /*+? circular inode search */
#define UNFAST                  /*+ Использовать функции вместо макро (для экономии места) */
#define SMALL                   /*- малая система (малые хэш-таблицы) */
#define IPK_SDADDR              /*- 2-byte адрес на диске для малых систем */
#define NOACCI                  /*-+ не записывать время обращения к файлу */
/* #define ACCT                 /*+ статистика по командам */
/* #define INSECURE             /*- не чистить setuid, setgid биты при записи в файл */
/* #define DIAGNOSTIC           /*- дополнительные проверки внутри системы */


/*
 * Режимы, Зависящие от ЭВМ (как правило)
 *      ТИП ЭВМ type set in whoami.h
 */
#if     PDP11 == GENERIC
#       define  MENLO_KOV
#       define  KERN_NONSEP             /* kernel is not separate I/D */
#else
#   if  PDP11 <= 40 || PDP11 == 60
#       define  MENLO_KOV
#       define  NONSEPARATE
#       define  KERN_NONSEP             /* kernel is not separate I/D */
#   endif
#endif

#if     PDP11 == 44 || PDP11 == 70 || PDP11 == 24 || PDP11 == GENERIC || defined(ENABLE34)
#       define  UNIBUS_MAP
#endif

/*
 *      Профилирование возможно только  на старших моделях.
 *      Для профилирования :splfix script нужно изменить так, чтобы
 *      вместо spl6 использовать spl7 (см. conf/:splfix.profile).
 */
/* #define PROFILE       /*-? Профилирование системы */

/* Параметры, изменение которых не рекомендуется,
 * так как потребует перетрансляцию ряда программ
 * или приведет к непредсказуемым эффектам
 */

/* #define UCB_PGRP             /*-- Учитывать процессы по группам */
#define UCB_SCRIPT              /*++ При запуске ком.файлов понимается #!shell */
/* #define UCB_SUBM             /*-- "submit", не имеет смысла при UCB_JCL */
#define UCB_SYMLINKS            /*++ "Символьные" связи файлов */
#define UCB_AUTOBOOT            /*+  Системный вызов "reboot" */
/* #define OLDTTY               /*--? старый стиль работы с терминалом */
#define UCB_NTTY                /*++ работа с терминалами по новому   */
#define MENLO_JCL               /*++ Job Control */
#define MENLO_OVLY              /*++ Пользовательские оверлеи */
#define VIRUS_VFORK             /*++ vfork system call */
#define UCB_NKB         1       /*++ "n" KB размер листа на диске (если /*, то 512)*/
/* #define DISPLAY              /*-? 11/70 or 45 display routine */
/* #define MPX_FILS             /*--? Мультиплексные файлы */
/*
 *  UCB_NET - требует подключения ряда файлов, которых здесь нет
 *  Режим экспериментальный, не включать!!!
 */
/* #define UCB_NET              /* TCP/IP Kernel */


#endif  _sys_localopts_h_
