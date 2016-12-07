clear all
close all
clc
for p=4

[A,f,n,h]=M2D(p);
%t1=A\f;
tic
[L,m]=Choleskyf(A);

[x]=LU(A,f);
t(p-1)=toc;  
plot(n,t(p-1),'*');
xlabel('Problem size (n)');
ylabel('CPU time');
T(n+2,n+2)=0;
%u2=zeros(n+2,n+2);
s=0;
for i=2:n+1
    for j=2:n+1
        s=s+1;
        T(i,j)=x(1,s);
 %       u2(i,j)=t1(s,1);

    end
end


figure 
mesh(T)
axis([0 n+2 0 n+2 0 1])
% figure
% mesh(u2)
% axis([0 n+2 0 n+2 0 1])
% for i=1:n+2
%     for j=1:n+2
%         
% u(i,j)=sin(pi*x(i))*sin(pi*y(j));
%     end
% end
% figure
% mesh(u)
end