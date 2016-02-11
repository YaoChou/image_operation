clc;
clear all;
img=zeros(1200,1600);
img1=zeros(1200,1600,3);
img1=uint8(img1);
img3=imread('/home/ecestudent/Downloads/2Cats.jpeg');
fid = fopen('/home/ecestudent/Documents/caffe/files/Output.txt');
center=11
center_x=20
tline = fgetl(fid);
while ischar(tline)
    %disp(tline)
    k=str2num(tline);
    k1=k-1;
    i=fix(k1/141)*11+1;
    j=rem(k1,141)*11+1;
    img(i,j)=1;
    img((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1))=ones(11);
    img1((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1),:)=img3((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1),:);
    tline = fgetl(fid);
end

fclose(fid);
figure(1);
imshow(img);
imwrite(img,'map_cat.jpg');
figure(2);
imshow(img1);
imwrite(img1,'1selevt_cat.jpg');
