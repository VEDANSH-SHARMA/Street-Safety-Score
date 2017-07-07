clc;
clear all;
close all;

for i= 1:1
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   a= imread(str3);
   figure;
   imshow(a);
   a22=a;
  
   a=rgb2gray(a); 
    figure; imhist(a,64)
   a=histeq(a);
   figure;
   imshow(a);
   figure; imhist(a,64)
   a=imresize(a, [1080 1080]);
end