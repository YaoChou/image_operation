clc 
clear;

fid = fopen('/home/ecestudent/Documents/caffe/file1/Output.txt');
tline = fgetl(fid);
fileID = fopen('exp.txt','w');

k1=1;
while ischar(tline)
    disp(tline)
    k=str2num(tline);
   
   while (k>k1)
     fprintf(fileID,'%i\n',k1);
     k1=k1+1;
   end
     tline = fgetl(fid);
     k1=k1+1;
end
   fclose(fileID);
   fclose(fid);