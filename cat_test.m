clc;
clear;
map=imread('222cats.png');
map=im2bw(map);
map=not(map);
cat=imread('2Cats.jpeg');
[m n k]=size(cat);
%% cell size 21*21 if the edge point is in the 3*3 center, consider edge cell.
%% 1 -- white, 0--black
cell=51;
center=11;
radis=round(cell/2);
center_x=radis-round(center/2);

k=1;
for i=1:center:(m-cell-1)
    for j= 1:center:(n-cell-1)/2
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subc%d.jpg',k);
        center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
        index(k,1)=i;
        index(k,2)=j;
           if sum(sum(center_matrix))<121;
            fullFileName = fullfile('1poscat/', outputFileName); 
            imwrite(img3, ['1poscat/',outputFileName]); 
           else
            fullFileName = fullfile('1negcat/', outputFileName);
           imwrite(img3, ['1negcat/',outputFileName]);
           end
       
       
            
            
      k=k+1;
     end
end
for i=1:center:(m-cell-1)
    for j= (n-cell-1)/2:center:(n-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
        img3=cat(i:(i+cell-1),j:(j+cell-1),:);
        outputFileName = sprintf('subc%d.jpg',k);
        center_matrix=map((i+center_x):(i+center_x+center-1),(j+center_x):(j+center_x+center-1));
        index(k,1)=i;
        index(k,2)=j;
           if sum(sum(center_matrix))<121;
            fullFileName = fullfile('2poscat/', outputFileName); 
            imwrite(img3, ['2poscat/',outputFileName]); 
           else
            fullFileName = fullfile('2negcat/', outputFileName);
           imwrite(img3, ['2negcat/',outputFileName]);
           end
       
       
            
            
      k=k+1;
     end
end
