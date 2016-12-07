clear all
close all
clc
p=6;
n=2^p-1;
h=1/2^p;
I = speye(n,n);
E = sparse(2:n,1:n-1,1,n,n);
D =( E+E'-2*I);
%PI2=2*pi*pi*speye(n,n)*(h^2);
%D=D-PI2;

%Boundary conditions
A =(1/h^2)*( kron(D,kron(I,I))+kron(I,kron(D,I))+kron(I,kron(I,D)));
spy(A)
%a=full(A);
B=zeros(n*n,1);

x=0:h:1;
y=0:h:1;
z=0:h:1;
h=0;
for i=1:n
    for j=1:n      
        for k=1:n
        h=h+1;
f(h,1)=-3*pi^2*sin(x(i+1)*pi)*sin(y(j+1)*pi)*sin(z(j+1)*pi);
    end
    end
end
s=A\f;
 h=0;
 u1=zeros(n+2,n+2,n+2);
 for i=2:n+1
     for j=2:n+1
         for k=2:n+1
         h=h+1;
         u1(i,j,k)=s(h,1);
     end
     end
 end
 figure
 mesh(u1(:,:,2))
 for i=1:n+2
     for j=1:n+2
         for k=1:n+2
 u(i,j,k)=sin(pi*x(i))*sin(pi*y(j))*sin(pi*z(k));
     end
 end
 end
 
 
 figure
 mesh(u(:,:,2))
%g = inline('sin(alpha*x)sin(alpha*y)','alpha','x','y');
%%

% 