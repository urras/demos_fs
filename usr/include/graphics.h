
/*
 *  ���������,���������,������� ��� ���� ������
 */

#include <sgtty.h>

#define MAXCOLORS 15    /* ����� ������,��� ������������ �.�.�� ��� ��� 1 */
#define XSIZE 400       /* ������ ������ �� ����������� */
#define YSIZE 240       /* ������ ������ �� ��������� */

	/* ����������� ������ */

#define HORIZ_DIR 0
#define VERT_DIR 1

	/* ����������� ��������-��������� ��� ���� outchar */

#define DIR0 0 /* o������ ����������� */
#define DIR1 1 /* ������ ��  45 ���� � ��� � */
#define DIR2 2 /* ������ ��  90 ���� � ��� � */
#define DIR3 3 /* ������ �� 135 ���� � ��� � */
#define DIR4 4 /* ������ ����� ������ */
#define DIR5 5 /* ������ �� 225 ���� � ��� � */
#define DIR6 6 /* ������ �� 270 ���� � ��� � */
#define DIR7 7 /* ������ �� 315 ���� � ��� � */

	/* �������������� ������������ */

#define LEFT_TEXT 0     /* ���������� ����� �� ������ */
#define CENTER_TEXT 1   /* ���������� � �������� ������ */
#define RIGHT_TEXT 2    /* ���������� ������ �� ������ */

	/* ������������ ������������ */

#define BOTTOM_TEXT 0   /* ���������� ����� �� ������ */
/*  #define CENTER_TEXT 1 - ���������� ���� */
#define TOP_TEXT 2      /* ���������� ������ �� ������ */

	/* ������ �������� ������� */

#define HEIGHTCHAR 8
#define WIDTHCHAR  8

	/* ������������ ����������� ���������� �������� ������� */

#define LIMIT 15

	/* ���� ����� */

#define TYPE_LINE0 0 /* �������� */
#define TYPE_LINE1 1 /* .....................................*/
#define TYPE_LINE2 2 /* .. .. .. .. .. .. .. .. .. .. .. .. .*/
#define TYPE_LINE3 3 /* .... .... .... .... .... .... .... ..*/
#define TYPE_LINE4 4 /* ...... ...... ...... ...... ...... ..*/
#define TYPE_LINE5 5 /* . ... . ... . ... . ... . ... . ... .*/
#define TYPE_LINE6 6 /* ... ...... ... ...... ... ...... ... */
#define TYPE_LINE7 7 /* .. ..... .. ..... .. ..... .. ..... .*/

	/* ������� ������ */

#define THIN_LINE 1
#define THICK_LINE 3

	/* ������ ������ ����� */

#define MOV 0   /* ��������� */
#define XOR 1   /* ����������� ��� */

	/* ������ ������������ */

#define NOERROR         0       /* ��� �� */
#define ERRORPARAM     -1       /* �� � ����������,������� �� ���������� */
#define ERRORCOOR      -2       /* �� � ���������� - ����������� */

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
	int direction;  /* ����������� ������ */
	int charsizex;  /* ����������� ���������� �������� �� ��� � */
	int charsizey;  /* ����������� ���������� �������� �� ��� y */
	int horiz;      /* �������������� ������������ */
	int vert;       /* ������������ ������������ */
};
struct viewporttype{
	int left,bottom,right,top;
	int clip;
};

struct arccoordstype arccoords;         /* ���� ��������� ���� */
struct linesettingstype typeline;       /* ��� ��� ����� */
struct palettetype cpalette;    /* ��� ��� ������������ ������ ��������,
					���� � graphdefaults */
struct textsettingstype text;   /* ��������� ������ */
struct viewporttype view;       /* ���� �������� ���� */

	/* ������� ���������� ������� */

int cpx;        /* ��� ���� �� ��� � */
int cpy;        /* ��� ���� �� ��� � */

int ccolor;     /* ������� ����� ����� */
int cbkcolor;   /* ������� ���� ����   */

int xaspect;    /* ��� ����������� ���������� ���������� �� ��� � */
int yaspect;    /* ��� ����������� ���������� ���������� �� ��� y */

int cdirchar;   /* ��� ����������� ������� */

int cfont;      /* ��� �����,����������� ��� ������ ������ ������� � ���� ��� */

int modeforline;/* ��� ����� ������ ����� */

int error;      /* ��������� ������ ��� ������� ���������� */

	/* ����� ������ */

int cv;
char v[20];

struct sgttya tmod,rmod;
