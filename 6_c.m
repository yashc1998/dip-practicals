#clear variables and command window
clc;
clear all;

pkg load image;

I = imread("images/image_1.jpg");

rot_factor = input("Enter the rotation degree: ");
rot_factor = -rot_factor;

i_rotated = imrotate(I, rot_factor, 'bilinear');

imshow(i_rotated);