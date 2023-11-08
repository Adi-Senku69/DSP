/*
 * main.c
 */

#include <stdio.h>

int x[10], h[10], y[10];


int main(void) {
	int i, j, m, n;

	printf("Enter the length of x(n): \n");
	scanf("%d", &m);

	printf("Enter length of h(n): \n");
	scanf("%d", &n);

	printf("\n Enter x(n): ");
	for(i = 0; i < m; i++)
		scanf("%d", &x[i]);

	printf("\n Enter h(n): ");
	for(i = 0; i < n; i++)
			scanf("%d", &h[i]);

	// Padding zeros
	for(i = m; i <= m + n - 1; i++)
		x[i] = 0;
	for(i = n; i <= m + n - 1; i++)
		h[i] = 0;

	// Linear convolution

	for(i = 0; i <= m + n - 1; i++){
		y[i] = 0;
		for(j = 0; j <= i; j++)
			y[i] = y[i] + (x[j] * h[i - j]);
	}

	for(i = 0; i < m + n - 1; i++){
		printf("The values of output y[%d] is = %d \n", i, y[i]);

		printf("\n\n");

	}
	
	return 0;
}
