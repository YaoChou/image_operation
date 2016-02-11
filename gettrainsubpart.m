clc;
clear;
map=imread('~/Downloads/final_xianchong.jpg');
map=im2bw(map);
cat=imread('~/Downloads/s_xianchong.jpg');
[m n k]=size(cat);
%% cell size 21*21 if the edge point is in the 3*3 center, consider edge cell.
%% 1 -- white, 0--black
cell=31;
center=5;
radis=round(cell/2);
center_x=radis-round(center/2);

k=1;
for i=1:center:278
    for j= 1:center:(n-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subx%d.jpg',k);
        %center_matrix=map((i+center_x):(i+radis),(j+center_x):(j+radis));
       center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
           if sum(sum(center_matrix))<25;
            fullFileName = fullfile('~/Desktop/xianpostrain1/', outputFileName); 
            imwrite(img3, ['xianpostrain1/',outputFileName]); 
           else
            fullFileName = fullfile('xiannegtrain1/', outputFileName);
           imwrite(img3, ['~/Desktop/xiannegtrain1/',outputFileName]);
           end
       
        k=k+1;
     end
end

for i=401:center:(m-cell-1)
    for j= 1:center:(n-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subx%d.jpg',k);
        %center_matrix=map((i+center_x):(i+radis),(j+center_x):(j+radis));
       center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
           if sum(sum(center_matrix))<25;
            fullFileName = fullfile('~/Desktop/xianpostrain1/', outputFileName); 
            imwrite(img3, ['xianpostrain1/',outputFileName]); 
           else
            fullFileName = fullfile('xiannegtrain1/', outputFileName);
           imwrite(img3, ['~/Desktop/xiannegtrain1/',outputFileName]);
           end
       
        k=k+1;
     end
end

for i=280:center:(400-cell-1)
    for j= 1:center:(40-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subx%d.jpg',k);
        %center_matrix=map((i+center_x):(i+radis),(j+center_x):(j+radis));
       center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
           if sum(sum(center_matrix))<25;
            fullFileName = fullfile('~/Desktop/xianpostrain1/', outputFileName); 
            imwrite(img3, ['xianpostrain1/',outputFileName]); 
           else
            fullFileName = fullfile('xiannegtrain1/', outputFileName);
           imwrite(img3, ['~/Desktop/xiannegtrain1/',outputFileName]);
           end
       
        k=k+1;
     end
end
for i=280:center:(400-cell-1)
    for j= 240:center:(n-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subx%d.jpg',k);
        %center_matrix=map((i+center_x):(i+radis),(j+center_x):(j+radis));
       center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
           if sum(sum(center_matrix))<25;
            fullFileName = fullfile('~/Desktop/xianpostrain1/', outputFileName); 
            imwrite(img3, ['xianpostrain1/',outputFileName]); 
           else
            fullFileName = fullfile('xiannegtrain1/', outputFileName);
           imwrite(img3, ['~/Desktop/xiannegtrain1/',outputFileName]);
           end
       
        k=k+1;
     end
end