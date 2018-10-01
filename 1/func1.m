function [ y ] =func1( n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
P = [0.4 0.3 0.1;0.4 0.3 0.6;0.2 0.4 0.3];
A = [1 0 0];
y = A;
for m = 1:n
     y = y*P;   
end
end

