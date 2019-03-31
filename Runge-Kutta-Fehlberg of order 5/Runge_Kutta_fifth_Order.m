function [Relative_Error]=Runge_Kutta_fifth_Order(f,a,n,h,x,t)
Relative_Error=zeros(n,1);
for j=1:1:n
k1=h*f(t,x);
k2=h*f(t+0.5*h,x+0.5*k1);
k3=h*f(t+0.5*h,x+0.25*k1+0.25*k2);
k4=h*f(t+h,x-k2+2*k3);
k5=h*f(t+(2/3)*h,x+(7/27)*k1+(10/27)*k2+(1/27)*k4);
k6=h*f(t+0.2*h,x+(28/625)*k1-0.2*k2+(546/625)*k3+(54/625)*k4-
(378/625)*k5);
x=x+(1/24)*k1+(5/48)*k4+(27/56)*k5+(125/336)*k6;
t=a+j*h;
Relative_Error(j)=abs((x-exp(t))/exp(t));
end