#clear variables and command window
clc;
clear all;

pkg load image;

I = imread("images/cameraman.tif");
J = imtranslate(I, [15, 25]);

#Original Image
figure, imshow(I);
title("Original Image");
set(gca, "Visible", "on");

#Translated Image
figure, imshow(J);
title("Translated Image");
set(gca, "Visible", "on");