function [x]= Solve(A,b,L)
[~,n]=size(b);
x(n) = b(L(n))/A(L(n),n);
for i = n-1:-1:1
    sum =b(L(i));
    for j = i + 1:1:n
        sum =sum-A(L(i),j)*x(j);
    end 
    x(i)=sum/A(L(i),i);
end
end 

