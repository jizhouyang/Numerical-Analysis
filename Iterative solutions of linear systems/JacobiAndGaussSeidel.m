%Jacobi Method
A=[7 1 -1 2; 1 8 0 -2; -1 0 4 -1; 2 -2 -1 6];
D=diag(A).^-1;
MOF=A-diag(diag(A));
X=[0;0;0;0];
B=[3; -5; 4; -3];
for J=1:1:200
X_J=D.*(B-MOF*X);
if norm(X-X_J)<0.0001,break; end
X=X_J;
end
J
X
%Gauss-Seidel Method
X=[0;0;0;0];
for I=1:1:200
X_G=X;
for j=1:1:4
X(j)=D(j)*(B(j)-MOF(j,:)*X);
end
if norm(X-X_G)<0.0001, break;end
end
j
[A1,A2]=SOR(A,B);
A2
A1