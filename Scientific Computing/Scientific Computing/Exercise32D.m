
clear all
clc
for p=2:2

[a,f,n,h]=M2D(p);

[l,m]=Choleskyf(a);

c=l*l';

    
    %Gaussian elimination
    
    y(1)= f(1)/l(1,1);
    
    for i=2:m
        s=0;
        for j=1:i-1
            
        s=l(i,j)*y(j)+s;
        
        end
        
        y(i)=(f(i)-s)/l(i,i);
        
    end
    
     x(m)= y(m)/l(m,m);
    
    for i=2:m
        h=m-i+1;
        s=0;
        for j=h:m
            
        s=l(j,h)*x(j)+s;
        
        end
        
        x(h)=(y(h)-s)/l(h,h);
        
    end
end
