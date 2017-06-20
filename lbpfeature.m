clc;
clear all;
close all;

for i= 1:95
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [180. 180]);
   
   a=rgb2gray(a);
   features(i,:) = extractLBPFeatures(a);
   figure(i);
   imshow(a);
   hold on;
   
end
  csvwrite('C:\Users\DSP_19\Desktop\lbpfeature_file.csv',features);