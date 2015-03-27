#include <stdio.h>
main()
{
float r,pi,l;
char *msg = "C - программа успешно закончилась.\n";

	r = 1.50;	/* радиус */
	pi = 3.1416;	/* число пи */
	l = 2.0 * r * pi; /* длина окружности */
	fprintf(stdout,"\nдлина окружности : %2.4f",l);
	fprintf(stdout,"\n%s",msg);
}
