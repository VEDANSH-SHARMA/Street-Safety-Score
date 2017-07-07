clc;
clear all;
close all;
hog = csvread('C:\Users\DSP_18\Desktop\features\data_final.csv');
lbp = csvread('C:\Users\DSP_18\Desktop\features\lbpfeature_file.csv');
score = xlsread('C:\Users\DSP_18\Desktop\score_updated.xlsx');

feature = [hog, lbp];
%size(feature)
%size(score)
%size(hog)
%size(lbp)k

test_img = imread('C:\Users\DSP_18\Desktop\ftest.jpg');

imshow(test_img);


test1 = imresize(test_img, [180 180]);
test = rgb2gray(test1);

imshow(test);
[hogf, hogVisualization] = extractHOGFeatures(test);

lbpf = extractLBPFeatures(test);

feature_test = [hogf, lbpf];
%size(feature_test)

md = fitrsvm(feature, score);
 %te = classify(feature_test, feature, value);
 yfit = predict(md, feature_test)
 