
clc;
clear all;
close all;
% EXAMPLE 1
% Load image
% img1 = imread('demo1.jpg');

for i= 1:95
   str1='C:\Users\DSP_19\Desktop\StreetScore\Pics_1\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   img1= imread(str3);

% Parameters:
clear param
param.imageSize = [180 180]; % it works also with non-square images
param.orientationsPerScale = [8 8 8 8];
param.numberBlocks = 4;
param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
[gist1, param] = LMgist(img1, '', param);

% Visualization
figure
subplot(121)
imshow(img1)
title('Input image')
subplot(122)
showGist(gist1, param)
title('Descriptor')
gist_feature(i,:)=gist1;
end    
   str='done'; 
    csvwrite('C:\Users\DSP_19\Desktop\gistfeature_file.csv',gist_feature);
% % EXAMPLE 2
% % Load image (this image is not square)
% img2 = imread('demo2.jpg');
% 
% % Parameters:
% clear param 
% %param.imageSize. If we do not specify the image size, the function LMgist
% %   will use the current image size. If we specify a size, the function will
% %   resize and crop the input to match the specified size. This is better when
% %   trying to compute image similarities.
% param.orientationsPerScale = [8 8 8 8];
% param.numberBlocks = 4;
% param.fc_prefilt = 4;
% 
% % Computing gist requires 1) prefilter image, 2) filter image and collect
% % output energies
% [gist2, param] = LMgist(img2, '', param);
% 
% % Visualization
% figure
% subplot(121)
% imshow(img2)
% title('Input image')
% subplot(122)
% showGist(gist2, param)
% title('Descriptor')



