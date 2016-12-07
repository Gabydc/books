clc

clear all

[A,f,n,h]=M2D(2);

[t,err]=IIC(A,f);


s=0;
u1=zeros(n+2,n+2);
for i=2:n+1
    for j=2:n+1
        s=s+1;
        u1(i,j)=t(s,1);
    end
end
figure
mesh(u1)
x=0:h:1;
y=0:h:1;

for i=1:n+2
    for j=1:n+2
        
u(i,j)=sin(pi*x(i))*sin(pi*y(j));
    end
end
figure
mesh(u)