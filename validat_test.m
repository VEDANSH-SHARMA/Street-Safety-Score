clear all;
close all;
clc;
hog = csvread('C:\Users\DSP_18\Desktop\validation_set\final_hog_feature_a.csv');
lbp = csvread('C:\Users\DSP_18\Desktop\validation_set\final_lbp_feature_a.csv');
gist = csvread('C:\Users\DSP_18\Desktop\validation_set\final_gist_feature_a.csv');
score = xlsread('C:\Users\DSP_18\Desktop\validation_set\training_score_a.xlsx');

feature = [lbp, gist];
%size(feature)
%size(score)
size(hog)
size(lbp)
%for i= 1:21
 %  str1='C:\Users\DSP_18\Desktop\test_images\';
%   num=num2str(i);
  % str2='.jpg';
 %  str3=strcat(str1,num,str2);
   
   
  %  a= imread(str3);
  %  test1 = imresize(a, [180 180]);
   % test = rgb2gray(test1);


 %   [hogf(i, :), hogVisualization] = extractHOGFeatures(test);
%
 %   lbpf(i, :) = extractLBPFeatures(test);
    
 %   clear param
  %  param.imageSize = [180 180]; % it works also with non-square images
 %   param.orientationsPerScale = [8 8 8 8];
 %   param.numberBlocks = 4;
%    param.fc_prefilt = 4;

  %  [gistf(i, :), param] = LMgist(test, '', param);
  %  i
    
%end
hogf = csvread('C:\Users\DSP_18\Desktop\validation_set\final_hog_feature_b.csv');
lbpf = csvread('C:\Users\DSP_18\Desktop\validation_set\final_lbp_feature_b.csv');
gistf = csvread('C:\Users\DSP_18\Desktop\validation_set\final_gist_feature_b.csv');
feature_test = [lbpf, gistf];
%size(feature_test)
%size(score)

%md = fitrsvm(feature, score);

md = fitrsvm(feature, score);
output_score_of_test = predict(md,feature_test);
str_f3 = 'done3'