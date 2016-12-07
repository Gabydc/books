clear all
clc
for p=2:6
[a,f,n,h]=M2D(p);
tic
[l]=Choleskyf(a);
time(p-1)=toc;
% c=l*l';
% b=a-c;
end