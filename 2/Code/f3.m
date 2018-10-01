function [] = f3( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[f,p]=uigetfile('*.jpg','Select Input Image');
path=[p f]; 
answer = inputdlg('enter rank','input',1);
[t] = str2double(answer{1});
info1 =imfinfo(f);
hajm = info1.FileSize;
taghrib =[];
mSe=[];
range = [];
for i=1:t
    [fn,A,I] = f1(path,i*10);
    info = imfinfo(fn);
    taghrib = [taghrib ; (info.FileSize/hajm)];
    %hu = immse(A,I);
    [m,n] = size(I);
    %fprintf('%4.2f',(I(0,0)-A(0,0)));
    hu = 0;
    G = I - A ;
    for x=1:(m*n)
        hu = hu + ((G(x))^2);
    end
    hu = hu/(m*n);
    mSe = [ mSe ; hu];
    range = [range ; (i*10)];
    fprintf('%d',info.FileSize);
end
figure,
plot(range,taghrib);
figure,
plot(range,mSe);
grid on
end

