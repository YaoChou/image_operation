%recover

clc;
clear;
map=imread('contour_map.jpg');
map=im2bw(map);
bubble=imread('bubble.jpg');
[m n k]=size(bubble);
%% cell size 21*21 if the edge point is in the 3*3 center, consider edge cell.
%% 1 -- white, 0--black
cell=21;
center=3;
radis=round(cell/2);
center_x=radis-round(center/2);

k=1;
for i=1:3:(m-cell-1)
    for j= 1:3:(n-cell-1)
        %% if map(i:i+20,j:j+20) 's center 10:12 have a black, conside this is positive sample. sum<9.
    % img3=bubble(i:(i+cell-1),j:(j+cell-1),:);
     row(k)= i;
     col(k)= j;
     num(k)= k;
     k=k+1;
    end
    
end
