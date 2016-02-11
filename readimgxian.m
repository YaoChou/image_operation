clc 
clear all
img=imread('~/Downloads/s_xianchong1.jpg');
img5=rgb2gray(img);
[n m k]=size(img);
newimg=ones(n,m);
newimg=im2bw(newimg);
for i=1:n
    for j=1:m
        if img5(i,j)<10
            newimg(i,j)=0;
        end
            
    end
end
img2=im2bw(img);
img3=img(1:n, 50:(m/2+30),:);
imshow(img3);