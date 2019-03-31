function [x]=Gauss(A,b)
[ma,na]=size(A);[~,nb]=size(b);
L=(1:na);
for i=1:1:na
    smax=0;
    for j=1:1:na
        smax=max(smax,abs(A(i,j)));
    end
    s(i)=smax;
end
for k=1:1:na-1
    rmax=0;
    for i=k:1:na
        r=abs(A(L(i),k)/s(L(i)));
        if(r>rmax),rmax=r;j=i;end
    end
    temp1=L(j);
    L(j)=L(k);
    L(k)=temp1;
    for i=k+1:1:na 
        xmult=A(L(i),k)/A(L(k),k);
        A(L(i),k)=0;
        for j=k+1:1:na
            A(L(i),j)=A(L(i),j)-(xmult)*A(L(k),j);
        end
        b(L(i))= b(L(i)) -(xmult)*b(L(k));
    end
end 
x=Solve(A,b,L);
end
