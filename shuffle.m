clear all;
close all;
clc;

hog = csvread('C:\Users\DSP_18\Desktop\shuffle\hog.csv');
lbp = csvread('C:\Users\DSP_18\Desktop\shuffle\lbp.csv');
gist = csvread('C:\Users\DSP_18\Desktop\shuffle\gist.csv');
score = xlsread('C:\Users\DSP_18\Desktop\shuffle\score.xlsx');

feature = [hog, lbp, gist, score];
ordering = randperm(222);
fx = feature(ordering, :);
%size(fx)

test = fx(1:50, :);
%size(test)
train = fx(51:222, :);
%size(train)

train_score = train(:, 16448);
%size(train_score)
test_score = test(:, 16448);
%size(test_score)


train = train(:, 1:16447);
size(train)
test = test(:, 1:16447);
md = fitrsvm(train, train_score);
output = predict(md,test);

x = [1:50];

plot(x, output),
hold on
plot(x, test_score);