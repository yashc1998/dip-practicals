#clear variables and command window
clc;
clear all;

pkg load image;

I = imread("images/image_1.jpg");
[m,n] = size(I);

#Original Image
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imhist(I);

I = rgb2gray(I);

#Histigram Equalisation
J = histeq(I);

figure,
subplot(1,2,1);
imshow(J);
subplot(1,2,2);
imhist(J);