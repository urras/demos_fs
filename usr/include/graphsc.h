
/*
 *  СТРУКТУРЫ,КОНСТАНТЫ,ГЛОБАЛЫ ДЛЯ ГРАФ ПАКЕТА
 */

#define escape putv(033);putv(0115);
/*      24.05.90 vk
 * define TRUE 1
 * define FALSE 0
 * define PI    3.14159
 */
#define MAXCOLORS 15    /* число цветов,кот одновременно м.б.на экр без 1 */
#define XSIZE 400       /* размер экрана по горизонтали */
#define YSIZE 240       /* размер экрана по вертикали */

	/* шрифты */

#define LATIN_FONT 1
#define RUSSIAN_FONT 2

	/* направление текста */

#define HORIZ_DIR 0
#define VERT_DIR 1

	/* направление символов-параметры для проц outchar */

#define DIR0 0 /* oбычное направление */
#define DIR1 1 /* наклон на  45 град к оси х */
#define DIR2 2 /* наклон на  90 град к оси х */
#define DIR3 3 /* наклон на 135 град к оси х */
#define DIR4 4 /* символ вверх ногами */
#define DIR5 5 /* наклон на 225 град к оси х */
#define DIR6 6 /* наклон на 270 град к оси х */
#define DIR7 7 /* наклон на 315 град к оси х */

	/* горизонтальное выравнивание */

#define LEFT_TEXT 0
#define CENTER_TEXT 1
#define RIGHT_TEXT 2

	/* вертикальное выравнивание */

#define BOTTOM_TEXT 0
/*  #define CENTER_TEXT 1 - определено выше */
#define TOP_TEXT 2

	/* размер базового символа */

#define HEIGHTCHAR 8
#define WIDTHCHAR  8

	/* максимальный коэффициент увеличения базового символа */

#define LIMIT 15

	/* типы линий */

#define TYPE_LINE0 0 /* сплошная */
#define TYPE_LINE1 1 /* .....................................*/
#define TYPE_LINE2 2 /* .. .. .. .. .. .. .. .. .. .. .. .. .*/
#define TYPE_LINE3 3 /* .... .... .... .... .... .... .... ..*/
#define TYPE_LINE4 4 /* ...... ...... ...... ...... ...... ..*/
#define TYPE_LINE5 5 /* . ... . ... . ... . ... . ... . ... .*/
#define TYPE_LINE6 6 /* ... ...... ... ...... ... ...... ... */
#define TYPE_LINE7 7 /* .. ..... .. ..... .. ..... .. ..... .*/

	/* толщина линиии */

#define THIN_LINE 1
#define THICK_LINE 3

	/* режимы вывода линий */

#define MOV 0   /* наложение */
#define XOR 1   /* исключающее или */

	/* ошибки пользователя */

#define NOERROR         0       /* нет ош */
#define ERRORPARAM     -1       /* ош в параметрах,которые не координаты */
#define ERRORCOOR      -2       /* ош в параметрах - координатах */

struct arccoordstype{
	int x,y;
	int xstart,ystart,xend,yend;
};
struct linesettingstype{
	int linestyle;
	int thickness;
};
struct palettetype{
	char size;
	char colors[MAXCOLORS+1];
};
struct textsettingstype{
	int direction;  /* направление текста */
	int charsizex;  /* коэффициент увеличения символов по оси х */
	int charsizey;  /* коэффициент увеличения символов по оси y */
	int horiz;      /* горизонтальное выравнивание */
	int vert;       /* вертикальное выравнивание */
};

struct viewporttype{
	int lleft,bottom,rright,top;
	int clip;
};

struct arccoordstype arccoords;         /* коор последней дуги */
struct linesettingstype typeline;       /* тек тип линии */
struct palettetype COLORS=      /* нач таб соответствия цветов палитрам
				 (уст после initgraph или graphdefaults) */
	{
		16,      /* размер таблицы         */
		000,     /* 0 - черный     цвет    */
		040,     /* 1 - голубой            */
		010,     /* 2 - зеленый            */
		014,     /* 3 - бирюзовый          */
		003,     /* 4 - красный            */
		016,     /* 5 - желтый             */
		001,     /* 6 - коричневый         */
		036,     /* 7 - светлосерый        */
		005,     /* 8 - темносерый         */
		060,     /* 9 - светлоголубой      */
		034,     /* 10- светлозеленый      */
		015,     /* 11- цветлобирюзовый    */
		003,     /* 12- светлокрасный      */
		063,     /* 13- светломалиновый    */
		042,     /* 14- малиновый          */
		076      /* 15- мигающий           */
	};
struct palettetype cpalette;    /* тек таб соответствия цветов палитрам */
struct textsettingstype text;   /* параметры текста */
struct viewporttype view;       /* коор текущего окна */

	/* текущие переменные графики */

int cpx;        /* тек коор по оси х */
int cpy;        /* тек коор по оси у */

int ccolor;     /* текущий номер цвета */
int cbkcolor;   /* текущий цвет фона   */

int xaspect;    /* тек коэффициент растяжения окружности по оси х */
int yaspect;    /* тек коэффициент растяжения окружности по оси y */

int cdirchar;   /* тек направление символа */

int cfont;      /* тек шрифт,установится при первом выводе символа в граф реж */

int modeforline;/* тек режим вывода линий */

int error;      /* последняя ошибка при запуске примитивов */

	/* буфер вывода */

int cv;
char v[20];
