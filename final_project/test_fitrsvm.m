clear all;
close all;
hog = csvread('C:\Users\DSP_18\Desktop\final_features\final_hog_feature.csv');
lbp = csvread('C:\Users\DSP_18\Desktop\final_features\final_lbpfeature.csv');
gist = csvread('C:\Users\DSP_18\Desktop\final_features\final_gist_feature.csv');
score = xlsread('C:\Users\DSP_18\Desktop\final_features\final_scores.xlsx');

feature = [hog, lbp, gist];
%size(feature)
%size(score)
%size(hog)
%size(lbp)
for i= 1:21
   str1='C:\Users\DSP_18\Desktop\test_images\';
   num=num2str(i);
   str2='.jpg';
   str3=strcat(str1,num,str2);
   
   
    a= imread(str3);
    test1 = imresize(a, [180 180]);
    test = rgb2gray(test1);


    [hogf(i, :), hogVisualization] = extractHOGFeatures(test);

    lbpf(i, :) = extractLBPFeatures(test);
    
    clear param
    param.imageSize = [180 180]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    [gistf(i, :), param] = LMgist(test, '', param);
    i
    
end

feature_test = [hogf, lbpf, gistf];
%size(feature_test)

%md = fitrsvm(feature, score);
str_f1 = 'done1';tic;
md = fitlm(feature, score);
toc;
str_f2 = 'done2'; tic;
output_score_of_test=predict(md,feature_test);toc;
str_f3 = 'done3'
