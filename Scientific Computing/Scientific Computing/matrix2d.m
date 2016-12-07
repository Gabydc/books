clear all
close all
clc
p=2;
n=2^p-1;
h=1/2^p;
I = speye(n,n);
E = sparse(2:n,1:n-1,1,n,n);
D =-( E+E'-2*I);
%PI2=2*pi*pi*speye(n,n)*(h^2);
%D=D-PI2;
%Boundary conditions
A =(1/h^2)*(kron(D,I)+kron(I,D));
%spy(A)
a=full(A);
B=zeros(n*n,1);

x=0:h:1;
y=0:h:1;
% g = inline('sin(alpha*x)sin(alpha*y)','alpha','x','y');
s=0;
for i=1:n
    for j=1:n      
        s=s+1;
f(s,1)=2*(pi^2)*sin(x(i+1)*pi)*sin(y(j+1)*pi);
    end
end
[A1,f1,n1,h]=M2D(p);
t1=A1\f1;
t=A\f;
s=0;
u1=zeros(n+2,n+2);
u2=zeros(n+2,n+2);
for i=2:n+1
    for j=2:n+1
        s=s+1;
        u1(i,j)=t(s,1);
        u2(i,j)=t1(s,1);

    end
end
figure
mesh(u1)
figure
mesh(u2)
for i=1:n+2
    for j=1:n+2
        
u(i,j)=sin(pi*x(i))*sin(pi*y(j));
    end
end
figure
mesh(u)