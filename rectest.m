clc;
clear all;


img3=imread('/home/ecestudent/Downloads/stonetest.jpg');
fid = fopen('/home/ecestudent/Documents/caffe/stoneyou/Output.txt');
[n m ch]=size(img3);
newmap=ones(n,m);
newmap=logical(newmap);
tline = fgetl(fid);
cell=31;
width=m-cell-1;
while ischar(tline)
    disp(tline);
    k=str2num(tline);
    k1=k-1;
    i=fix(k1/width)+1;
    j=rem(k1,width)+1;
    newmap(i,j)=0;
    tline = fgetl(fid);
end

fclose(fid);
figure(1);
imshow(newmap);
