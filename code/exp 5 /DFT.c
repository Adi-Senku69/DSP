#include<stdio.h>
#include<math.h>

int main(void)
{
int N,k,n,i;
float pi=3.1416,sumre=0,sumim=0,Xr[8]={0,0},Xi[8]={0,0};
int x[32];
printf("Enter the length of sequence\n");
scanf("%d", &N);
printf("Enter the sequence\n");
for(i=0;i<N;i++)
{
scanf("%d",&x[i]);
}
for(k=0;k<N;k++){
sumre=0;
sumim=0;
for(n=0;n<N;n++){
sumre=sumre+x[n]*cos(2*pi*k*n/N);
sumim=sumim-x[n]*sin(2*pi*k*n/N);
}
Xr[k]=sumre;
Xi[k]=sumim;
printf("x[%d]= %.2f\t+ \%.2fi\n",k,Xr[k],Xi[k]);
}

return 0;
}
