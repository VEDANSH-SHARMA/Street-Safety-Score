% EXAMPLE 1
% Load image
% img1 = imread('demo1.jpg');
clc;
clear all;
close all;

for i= 1:222
   str1='C:\Users\DSP_18\Desktop\final_images\';
   num=num2str(i);
    md = mod(i,10);
   
   if (i<101 && md ~= 0)
        str2=' .jpg';
   
   else
       if i>100
           str2='.jpg';

       else
           if md == 0
               str2='.jpg';
           end
        end
   end
   str3=strcat(str1,num,str2);
   img1= imread(str3);
    a= imresize(img1, [180 180]);
   
   a=rgb2gray(a);

% Parameters:
clear param
param.imageSize = [180 180]; % it works also with non-square images
param.orientationsPerScale = [8 8 8 8];
param.numberBlocks = 4;
param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies

[gist1(i, :), param] = LMgist(a, '', param);
i
% Visualization
%figure
%subplot(121)
%imshow(img1)
%title('Input image')
%subplot(122)
%showGist(gist1, param)
%title('Descriptor')

end    
    csvwrite('C:\Users\DSP_18\Desktop\final_features\final_gist_feature.csv',gist1);
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



