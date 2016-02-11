%simple code to split image
img = imread('bubble.jpeg');
img= imresize(img, [1000 1000]);
%img2=img;
%img(1:20:end,:,:) = 0;       %# Change every tenth row to black
%img(:,1:20:end,:) = 0;       %# Change every tenth column to black
%imshow(img);                 %# Display the image
%imwrite(img,'grid.jpeg');
d=20;
cells=mat2cell(img,d*ones(1,50), d*ones(1,50),3);
% for i=1:50
%    for j=1:50
%        img(20*i:)
%    end
% end

img2=cells{1,3};
imshow(img2);
k=1;
    
for i=1:50
    for j=1:50
      img3=cells{i,j};
      outputFileName = sprintf('subp%d.jpg',k);
      imwrite(img3, outputFileName);   
      k=k+1;
    end
end
 