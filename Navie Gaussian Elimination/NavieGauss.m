function [x] = NavieGauss(A,b)
[~,n]=size(b);
for k = 1 :1: n - 1
    for i = k + 1:1: n
        xmult= A(i,k) /A(k,k);
        A(i,k)=0 ;
        for j = k + 1:1:n 
            A(i,j)= A(i,j)-xmult*A(k,j);
        end
        b(i)=b(i)-xmult*b(k);
    end
end
x(n)=b(n)/A(n,n);
for i = n - 1 :-1: 1
    sum = b(i);
    for j = i + 1:1:n
        sum =sum - A(i,j)*x(j);
    end
    x(i)= sum/A(i,i);
end
end