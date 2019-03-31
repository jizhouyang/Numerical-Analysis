%SOR Method where w=1.1
function [X, i] = SOR(A,B)
D=diag(diag(A));
L=tril(A)-D;
U=triu(A)-D;
w=1.1;
e=max(eig(inv(D+w*L)*(D*(1-w)-w*U)));
X0=ones(4,1);
t=0.0001;
tol=t*ones(4,1);
k=1;
X(:,1)=X0;
err=1000000000*rand(4,1);
while sum(abs(err)>=tol) ~=zeros(4,1)
X(:,k+1)=inv(D+w*L)*(D*(1-w)-w*U)*X(:,k)+inv(D+w*L)*B;
err=X(:,k+1)-X(:,k);
k=k+1;
end
i=k;
X=X(:,k);