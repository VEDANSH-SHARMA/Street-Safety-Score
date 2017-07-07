close all;
clear all;
clc;
for i= 12
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [180 180]);
imshow(a);
I = rgb2gray(a);
figure
imshow(I)

regions = detectMSERFeatures(I);
[features, regions1]= extractFeatures(I,regions);
figure; imshow(I); hold on;
plot(regions,'showPixelList',true,'showEllipses',false);

figure; imshow(I);
hold on;
plot(regions);
end