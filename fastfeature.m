clc;
clear all;
close all;

for i= 1:5
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   a=  im2bw(a,0.5);
   figure;
   imshow(a);
   %a= imresize(a, [180 180]);
   corners = detectFASTFeatures(a);
   imshow(a); hold on;
   plot(corners.selectStrongest(50));
   
end