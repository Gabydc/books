clc

clear all

for p=2:0
[A,f,n,h]=M3D(p);


t=A\f;



s=0;
u1=zeros(n+2,n+2);
x=0:h:1;
y=0:h:1;
z=0:h:1;

for i=1:n
    for j=1:n
        for k=1:n
        s=s+1;
        t1(s,1)=sin(x(i+1)*pi)*sin(y(j+1)*pi)*sin(z(k+1)*pi);
        end
    end
end
% s=0;
% for i=2:n+1
%     for j=2:n+1
%         for k=1:n+1
%         s=s+1;
%         u(i,j)=t(s,1);
%         end
%     end
% end


format long

err(p-1)=max(t-t1)
end
