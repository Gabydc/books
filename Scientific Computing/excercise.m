clear all
close all
clc
fprintf('\n Problem size (n)    relative error    relative residual \n');
for n=10:10:50

for i=1:n
%     for j=i+1:n
%         a(i,j)=-1;
%     end
%     a(i,i)=1;
a(i,i)=0.1;
end
u(1:n,1)=0.1;
b=inv(a);
f=a*u;
uu=a\f;
aa=a*uu;
error=0;
errorf=0;
e=0;
ef=0;
for i=1:n
error=error+(u(i)-uu(i))^2;
e=e+u(i)^2;
errorf=errorf+(f(i)-aa(i))^2;
ef=ef+f(i)^2;
end
error=sqrt(error)/sqrt(e);
errorf=sqrt(errorf)/sqrt(ef);
fprintf('\n %10d %18.5d %18.5d\n', n, error, errorf);
figure(1)
plot(n,log(error),'pb')
hold on
figure(2)
plot(n,errorf,'or')
hold on
end