
%Iterative Cholesky Decomposition

% a=[4 3 1; 3 5 2; 1 2 6];
function [u,err]=IIC(a,b)
% b=[3125; 3650; 2800];

L=IC(a);

B=inv(L*L');

n=length(a);
u0=zeros(n,1);

    r=(a*u0-b);
    err=sqrt(r'*r)/sqrt(b'*b);
   
  
    
    while  err>10^-10
        

     
    u=u0-B*r;
    u0=u;
    r=(a*u0-b);
    err=sqrt(r'*r)/sqrt(b'*b);
    
    end
 
    
     
