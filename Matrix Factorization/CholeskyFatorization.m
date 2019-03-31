function [x]=CholeskyFatorization(A)
[n na]= size(A);
L(1,1)=sqrt(A(1,1));
for i=2:1:n
    L(i,1)=A(i,1)/L(1,1);
end
for k=2:1:n
    sum=A(k,k);
    for s=1:1:k-1
        sum=sum-(L(k,s)*L(k,s));
    end
    L(k,k)=sqrt(sum);
    for i=k+1:1:n
        sum=A(i,k);
        for s=1:1:k-1
            sum=sum-L(i,s)*L(k,s);
        end
        L(i,k)=sum/L(k,k);
    end
end
x=L;
end