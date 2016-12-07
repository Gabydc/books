
clear all
a=[4 3 1; 0 5 2; 1 0 6];
b=[3125; 3650; 2800];
n=3;
l=zeros(3,3);
l(1,1)=sqrt(a(1,1));




    for k=2:n
        for i=1:k
            
            if  a(k,i)==0;
                
                l(k,i)=0;
                
            else
            
          s=0;  
        if i==1
            
          l(k,i)=a(i,k)/l(i,i);
          
        elseif  i==k && i~=1
               
          for j=1:i-1  
              
               s=l(i,j)*l(k,j)+s;
               
          end
              
           l(k,i)=sqrt(a(i,k)-s);
        else
            
          for j=1:i-1  
              
               s=l(i,j)*l(k,j)/l(i,i)+s;
               
          end
              
           l(k,i)=a(i,k)/l(i,i)-s;
        
        end
           
            end          
        end
              
    end
    
    %Gaussian elimination
    
    y(1)= b(1)/l(1,1);
    
    for i=2:n
        s=0;
        for j=1:i-1
            
        s=l(i,j)*y(j)+s;
        
        end
        
        y(i)=(b(i)-s)/l(i,i);
        
    end
    
     x(n)= y(n)/l(n,n);
    
    for i=2:n
        h=n-i+1;
        s=0;
        for j=h:n
            
        s=l(j,h)*x(j)+s;
        
        end
        
        x(h)=(y(h)-s)/l(h,h);
        
    end
    
      l  
      c=l*l'
      a   
      x
             

