function [evec,evalue]=PowerMethod(S,A,Err)
F=1;
x=S;
n=100;
while F> Err
y=A*x;
F=abs(norm(x)-n);
n=norm(x);
x=y/n;
end
evec=x;
evalue=n;