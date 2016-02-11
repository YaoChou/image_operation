clc 
clear;

fid = fopen('/home/ecestudent/Documents/caffe/file1/Output.txt');
tline = fgetl(fid);
fileID = fopen('exp1.txt','w');
%k1=str2num(tline);
i=1;
while ischar(tline)
    disp(tline)
     k2=str2num(tline);
    a(i)=k2;
    tline = fgetl(fid);
%      k2=str2num(tline);
%      if k2-k1>1;
%          for i=(k1+1):(k2-1)
%              fprintf(fileID,'%i\n',i);
%          end
%      end
%              
%      k1=k2;
i=i+1;
end
a=sort(a);
for i=1:4895
    if a(i+1)-a(i)>1
        for j=(a(i)+1):(a(i+1)-1)
              fprintf(fileID,'%i\n',j);
         
        end
    end
end

   fclose(fileID);
   fclose(fid);