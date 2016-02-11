%get test images
clc 
clear all
img=imread('~/Downloads/s_xianchong.jpg');
[n m k]=size(img);
img1=img(280:400,40:240,:);
imshow(img1);
imwrite(img1,'testxian.jpg');
[n1 m1 k1]=size(img1);
cell=31;
k2=1;
for i=1:(n1-31-1)
    for j=1:(m1-31-1)
        img3=img1(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subx%d.jpg',k2);
        imwrite(img3, ['xiantest/',outputFileName]); 
        k2=k2+1;
    end
end