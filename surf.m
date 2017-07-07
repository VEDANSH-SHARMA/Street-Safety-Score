clc;
clear all;
close all;
j=zeros;
for i= 12
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [180 180]);
   I = rgb2gray(a);
   
   points = detectSURFFeatures(I);
   figure(i);
   imshow(I); hold on;
   plot(points.selectStrongest(1000));
   
   %[features(100,65), valid_points(100,2)] = extractFeatures(I, points);
   [features, valid_points] = extractFeatures(I, points);

   
   
end    
str='done'; 