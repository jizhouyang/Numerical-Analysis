function [x1,v] = Inverse_Power(A, ep, numitr)
[na,nb]=size(A);
x=rand(na,1);
for k = 1 : numitr
xhat = A \ x;
v=x(2)/xhat(2);
x = xhat/norm(xhat,2);
if norm((A)* x , inf) <= ep
break;
end
end
x1=x;
end