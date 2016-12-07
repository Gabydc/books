
function[A,f,n,h]=M3D(p)

clc

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



B=zeros(n*n*n,1);

x=0:h:1;
y=0:h:1;
z=0:h:1;
% g = inline('sin(alpha*x)sin(alpha*y)','alpha','x','y');
s=0;
for i=1:n
    for j=1:n    
        for k=1:n
            
        s=s+1;
f(s,1)=3*(pi^2)*sin(x(i+1)*pi)*sin(y(j+1)*pi)*sin(z(j+1)*pi);
        end
    end
    
end