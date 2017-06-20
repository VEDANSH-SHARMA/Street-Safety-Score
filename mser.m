clc;
clear all;
close all;

for i= 1
   str1='C:\Users\DSP_04\Desktop\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [400 400]);
   
   a=rgb2gray(a); %if needed
   regions = detectMSERFeatures(a);
   [features, valid_points] = extractFeatures(a,regions,'Upright',true);
   features = reshape(features,[1,23424])
   figure; imshow(a); hold on;
   plot(regions,'showPixelList',true,'showEllipses',false);
   figure; imshow(a);
hold on;
plot(regions);


 %[featureVector(i,:), hogVisualization(i,:)] = extractHOGFeatures(a);
 
 % features(i,:) = extractHOGFeatures(a); // for getting only feature 
 
 %figure(i);
 %imshow(a); 
% hold on; % to hold image then imprint the hogVisualization on it
 %plot(hogVisualization(i,:));

  
   
end    
str='done'; 