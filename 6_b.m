#clear variables and command window
clc;
clear all;

pkg load image;

I = imread("images/image_1.jpg");

#scaling the image to half of its original size
i_scaled = imresize(I, 0.5);

imshow(i_scaled);