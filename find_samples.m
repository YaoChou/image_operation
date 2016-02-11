clc, clear;
dirs=dir('Samples/*.jpg');           % ��ȡĳ��Ŀ¼��ָ�������ļ��б?���ؽṹ���顣
dircell=struct2cell(dirs);        % ���ṹ��(struct)ת����Ԫ������(cell)��ת��һ�����ļ���������
image_names0 = dircell(1,:);
% image_names0 = image_names0(3:length(image_names0));

for i = 1:length(image_names0)
    delimiter = '.';
    strs = strsplit(image_names0{i}, delimiter);
    temp = strs{1};
    delimiter2 = '_';
    strs2 = strsplit(temp, delimiter2);
    col(i) = str2num(strs2{1});
    row(i)= str2num(strs2{2});
    %NUMBER(i) = 50*row+col+1;
end
%NUMBER2 = sort(NUMBER);

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

    ind = zeros(50);
    for i=1:length(row)
        ind(row(i)+1,col(i)+1)=1;   
    end
    
  k=1;  
for i=1:50
    for j=1:50
      img3=cells{i,j};
      outputFileName = sprintf('subp%d.jpg',k);
        if ind(i,j)==1;
            fullFileName = fullfile('positive/', outputFileName); 
            imwrite(img3, ['positive/',outputFileName]); 
        else
            fullFileName = fullfile('negtive/', outputFileName);
            imwrite(img3, ['negtive/',outputFileName]);
        end
      k=k+1;
    end
end
 