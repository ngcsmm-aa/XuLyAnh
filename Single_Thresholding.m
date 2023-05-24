%Ngưỡng đơn
img=imread('coins.png');
[x,y]=size(img);
info=imfinfo('coins.png');
Lmax=2^info.BitDepth-1;
for i=1:x
    for j=1:y
        if img(i,j)>100
            img(i,j)=Lmax;
        else
            img(i,j)=0;
        end
    end
end
imshow(img)
title('Ảnh phân ngưỡng đơn')