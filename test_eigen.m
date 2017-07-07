clear all;
close all;
clc;

img = imread('ftest.jpg');

img = rgb2gray(img);

img = imresize(img, [180 180]);

imshow(img);
size(img)

img = double(img);
[V, D] = eig(img);

