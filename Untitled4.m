close all;
clear all;
clc;

RGB = imread('image1a.jpg');
RGB=imresize(RGB,[400 400]);
imshow(RGB)
I = rgb2gray(RGB);
figure
imshow(I)

regions = detectMSERFeatures(I);
figure; imshow(I); hold on;
plot(regions,'showPixelList',true,'showEllipses',false);

figure; imshow(I);
hold on;
plot(regions);


img=imread('image1a.jpg');
img=imresize(RGB,[400 400]);
figure;
imshow(img);
[featureVector, hogVisualization] = extractHOGFeatures(img);
figure;
imshow(img); 
hold on;
plot(hogVisualization);
figure



points = detectBRISKFeatures(I);
imshow(I); hold on;
plot(points.selectStrongest(1000));
figure



corners = detectFASTFeatures(I,'MinContrast',0.1);
J = insertMarker(I,corners,'circle');
imshow(J);
figure



points = detectSURFFeatures(I);
imshow(I); hold on;
plot(points.selectStrongest(1000));
figure



corners = detectHarrisFeatures(I);
imshow(I); hold on;
plot(corners.selectStrongest(1000));