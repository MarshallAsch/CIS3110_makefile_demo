/**
 * This code is duplicated from:
 * https://valgrind.org/docs/manual/quick-start.html
 */

#include <stdlib.h>

void f(void) {
	int* x = malloc(10 * sizeof(int));
	x[10] = 0;
}

int main(void) {
	f();
	return 0;
}

