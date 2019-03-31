function [Error]=Admas_Bashforth_Moulton(f,a,n,h,x,t)
Error=zeros(n,1);
previous=x;
for j=1:1:n
A=x+(h/2)*(3*f(t,x)-f(t-h,previous));
previous=x;
x=x+(h/2)*(f(t+h,A)+f(t,x));
t=a+j*h;
Error(j)=(1/6)*abs(x-A);
end