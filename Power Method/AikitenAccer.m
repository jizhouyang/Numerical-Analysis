function [x1] = AikitenAccer(A, ep, numitr)
[NA,NB]=size(A);
x=rand(NA,1);
B=inv(A);
r=rand(numitr,1);
s=[1;1];
for k = 1:1:numitr
R = k;
y=B*x;
r(k) = x(2) / y(2);
x = y/norm(y,inf);
if norm((A)* x , inf) <= ep
break;
end
end
for k = 3:numitr
s(k)=r(k)-((r(k)-r(k-1))*(r(k)-r(k-1))/(r(k)-2*r(k-1)+r(k-2)));
if isnan(s(k))
break;
end
end
[na,nb]=size(s);
x1=s(na-1);
end