clear all
close all
clc
for p=2:10

[A,f,n,h]=M2D(p);

tic
[L,m]=Choleskyf(A);

[x]=LU(A,f);
clear A
clear L
clear f
t(p-1)=toc;  
figure(1)
plot(n+1,t(p-1),'*');
hold on
xlabel('Problem size (n)');
ylabel('CPU time');
T(n+2,n+2)=0;
s=0;
for i=2:n+1
    for j=2:n+1
        s=s+1;
        T(i,j)=x(1,s);
    end
end
figure 
mesh(T)
axis([0 n+2 0 n+2 0 1])
end