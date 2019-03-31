function [L, U]=DooLittleFatorization(A)
[MA, NA]=size(A);
L=zeros(size(A));
U=zeros(size(A));
for i=1:1:NA
    U(1,i)=A(1,i);
end
for i=1:1:NA 
    L(i,1)=A(i,1)/U(1,1);
end
L(1,1)=1;
for k=2:MA
    for i=2:MA
        for j=i:MA
            sum1=A(i,j);
            for m=1:1:1-1
                sum1=sum1-L(i,m)*U(m,j);
            end
            U(i,j)=sum1; 
        end
        L(i,k)=(A(i,k)-L(i,1:k-1)*U(1:k-1,k))/U(k,k);
    end
end