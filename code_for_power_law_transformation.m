% code for power law transformation
clear all;
a=imread('cameraman.tif');
[rows,columns]=size(a);
a = double(a);
c=1;
gamma=0.8;
for i=1:rows
    for j=1:columns
        b(i,j) = c*(a(i,j)^gamma);
%       clipping the image values to 0 and 255  
        if b(i,j)>255
            b(i,j)=255;
        elseif b(i,j)<0
            b(i,j)=0;
        end    
    end
end    
figure;
subplot(1,2,1);
imshow(uint8(a));
title('Original image');
subplot(1,2,2);
imshow(uint8(b));
title('power law transformation');