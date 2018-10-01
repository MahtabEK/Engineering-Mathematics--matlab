function [y] = func2(n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
P = [0.4 0.3 0.1;0.4 0.3 0.6;0.2 0.4 0.3];
A = [1 0 0;0 1 0;0 0 1];
y = [0 0 0 ;0 0 0;0 0 0];
y = A;


for m = 1:n
     y = y*P;
     fprintf('%4.2f %4.2f %4.2f\n',y');
     fprintf('\n');
     
end
end
