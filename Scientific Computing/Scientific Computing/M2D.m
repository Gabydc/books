

function[A,f,n,h]=M2D(p)
% p=2;
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

    
    
end