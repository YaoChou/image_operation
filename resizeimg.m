%%change size of image
clc;
clear all;
img=imread('/home/ecestudent/Desktop/subb1.jpg');

img1=imresize(img, [31,31]);
imwrite(img1, '/home/ecestudent/Desktop/subb31.jpg');

img2=imresize(img, [30,30]);
imwrite(img2, '/home/ecestudent/Desktop/subb30.jpg');

img3=imresize(img, [32,32]);
imwrite(img3, '/home/ecestudent/Desktop/subb32.jpg');

img4=imresize(img, [20,20]);
imwrite(img4, '/home/ecestudent/Desktop/subb20.jpg');