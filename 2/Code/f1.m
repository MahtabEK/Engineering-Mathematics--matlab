
function [t,AK,I] = f1( p , k )
path = p;
I=imread(path);
I = double(I);
%I = I(:,:,1);
[U,S,V] = svds(I,k);
AK = 0;
Ak = U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
im = uint8(Ak);
 figure,
       
       imshow(im);
       title('Output Image')
       [t,y] = imsave;
       %imageinfo;
 
end

