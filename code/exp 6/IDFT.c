#include<stdio.h>
#include<math.h>

int main(void) {
int N,k,n,i;
float pi=3.1416,sumre=0,sumim=0,Xr[8]={0,0},Xi[8]={0,0};
float x1[4];
float x2[4];
printf("Enter the length of sequence\n");
scanf("%d", &N);
printf("Enter the real part\n");
for(i=0;i<N;i++){
scanf("%f",&x1[i]);
}
printf("Enter the imaginary part\n");
for(i=0;i<N;i++){
scanf("%f",&x2[i]);
}
for(k=0;k<N;k++){
sumre=0;
sumim=0;
for(n=0;n<N;n++){
sumre=sumre+x1[n]*cos(2*pi*k*n/N)-x2[n]*sin(2*pi*k*n/N);
sumim=sumim+x2[n]*cos(2*pi*k*n/N)+x1[n]*sin(2*pi*k*n/N);
}
Xr[k]=sumre/N;
Xi[k]=sumim/N;
printf("x([%d])=\t%f\t+\t%fi\n",k,Xr[k],Xi[k]);
}
return 0;
}
