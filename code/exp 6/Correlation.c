#include <stdio.h>
void main()
{
int x[20],y[20],h[20];
int res;
int i,j,m,n;

printf("enter the length of x(n)\n");
scanf("%d",&m);
printf("enter x(n):");
for(i=0;i<m;i++){
scanf("%d",&x[i]);}

printf("enter the length of h(n)");
scanf("%d",&n);
for(i=m;i<m+n;i++){
x[i]=0;}
printf("enter h(n):");
for(i=n-1;i>=0;i--){
scanf("%d",&h[i]);}
for(i=n;i<m+n;i++){
h[i]=0;}
for(i=0;i<m+n-1;i++)
{y[i]=0;
for(j=0;j<=i;j++)
{
y[i]=y[i]+(x[j]*h[i-j]);
}
}
for(i=0;i<m+n-1;i++)
{
res=y[i];
printf("y[%d]=%d\n",i,res);
}

}
