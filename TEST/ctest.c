#include <stdio.h>
main()
{
float r,pi,l;
char *msg = "C - ��������� ������� �����������.\n";

	r = 1.50;	/* ������ */
	pi = 3.1416;	/* ����� �� */
	l = 2.0 * r * pi; /* ����� ���������� */
	fprintf(stdout,"\n����� ���������� : %2.4f",l);
	fprintf(stdout,"\n%s",msg);
}
