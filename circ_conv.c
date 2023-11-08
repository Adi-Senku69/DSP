/*
 * main.c
 */
#include <stdio.h>

int m, n, x[10], h[10], y[10], i, j, k, x2[10], a[10], swap[10];

int main(void) {
	
	printf("Enter length of first sequence \n");
	scanf("%d", &m);
	printf("Enter length of second sequence \n");
	scanf("%d", &n);

	printf("Enter the first sequence \n");
	for(i = 0; i < m; i++)
		scanf("%d", &x[i]);

	printf("Enter the second sequence \n");
	for(j = 0; j < n; j++)
		scanf("%d", &h[j]);

	if(m - n != 0){
		if(m > n){
			for(i = n; i < m; i++)
				h[i] = 0;
			n = m;
		}
		for(i = m; i < n; i++)
			x[i] = 0;
		m = n;
	}
	y[0] = 0;
	a[0] = h[0];

	for(j = 1; j<n; j++)
		a[j] = h[n - j];

	for(i = 0; k < n; k++)
		y[i] += x[i] *  a[i];

	for(k = 0; k < n; k++){
		y[k] = 0;
		for(j = 1; j < n; j++)
			x2[j] = a[j - 1];
		x2[0] = a[n - 1];

		for(i = 0; i < n; i++){
			a[i] = x2[i];
			y[k] += x[i] * x2[i];

		}


	}
//	for(i = 0; i < n; i++){
//		if(i == 0){
//			swap[i] = y[n - 1];
//			continue;
//		}
//		swap[i] = y[i - 1];
	//}

	printf("Circular convolution of x(n) and h(n) is : \n");
		for(i = 0; i < n; i++){
//
			printf("y[%d] = \t %d \n", i, y[i]);
		}

	return 0;
}
