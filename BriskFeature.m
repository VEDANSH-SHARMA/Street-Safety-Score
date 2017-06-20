clc;
clear all;
close all;

for i= 1
   str1='C:\Users\DSP_03\Desktop\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [400 400]);
   I = rgb2gray(a);
   
  points = detectBRISKFeatures(I);
  [features, valid_points] = extractFeatures(I, points);
  b=reshape(features.Features,[1,27520]);
  figure(i);
  imshow(I); hold on;
  plot(points.selectStrongest(1000));
  
  
   
end    
str='done'; 