clc;
clear all;
close all;

for i= 1:25
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [256 256]);
   
   %a=rgb2gray(a); %if needed

 [featureVector(i,:), hogVisualization(i,:)] = extractHOGFeatures(a);
 
 % features(i,:) = extractHOGFeatures(a); // for getting only feature 
 
 figure(i);
 imshow(a); 
 hold on; % to hold image then imprint the hogVisualization on it
 plot(hogVisualization(i,:));

  
   
end    
  str='done'; 
 