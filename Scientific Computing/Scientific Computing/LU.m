% clear all
% clc
% n=3;
%   a=[4 -4 0
%       -1 4 -2
%       0 -2 4];
%   b=[400,400,400];
function[xi]=LU(a,b)
m=length(a);
l=zeros(m,m);
u=eye(m,m);
l(:,1)=a(:,1);
for j=1:m
    u(1,j)=a(1,j)/l(1,1);
end
for j=2:m-1
    for i=j:m
        sum=0;
        for k=1:j-1
            sum=sum+l(i,k)*u(k,j);
        end
        l(i,j)=a(i,j)-sum;
    end
    for k=j+1:m
        sum=0;
       for i=1:j-1
           sum=sum+l(j,i)*u(i,k);
       end
       u(j,k)=(a(j,k)-sum)/l(j,j);
    end 
end
for k=1:m-1
sum=sum+a(m,k)*u(k,m);
end
l(m,m)=a(m,m)-sum;   
y(1)=b(1)/l(1,1);
for i=2:m
    sum=0;
    for j=1:i-1
        sum=sum+l(i,j)*y(j);
    end
    y(i)=(b(i)-sum)/l(i,i);
end
xi(m)=y(m);
for i=m-1:-1:1
    sum=0;
    for j=i+1:m
        sum=sum+u(i,j)*xi(j);
    end
    xi(i)=y(i)-sum;
end
