close all
clear all
clc
for p=2
[A,f,n,h]=M2D(p);
x1=A\f;
tic
[L,m]=Choleskyf(A);
[y]=Ux(L,f);
[x]=Lx(L,y); 
t(p-1)=toc;  
plot(n,t(p-1),'*');
xlabel('Problem size (n)');
ylabel('CPU time');
T(n+1,n+1)=0;
c=0;
  for j=2:n
       for i=2:n
           c=c+1;
       T(i,j)=x(1,c);
       T1(i,j)=x1(c,1);

       end 
  end
  figure
  mesh(T)
  figure
  mesh(T1)
  x2=0:h:1;
y=0:h:1;
for i=1:n+1
    for j=1:n+1
        
u(i,j)=sin(pi*x2(i))*sin(pi*y(j));
    end
end
figure
mesh(u)
end