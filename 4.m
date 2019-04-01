#clear variables and command window
clc;
clear all;

pkg load image;

i = imread("images/image_1.jpg");
j = imread("images/image_2.jpg");

and_image = uint16(and(i,j));
figure, imshow(and_image);
title("AND Image: ");

or_image = uint16(or(i,j));
figure, imshow(or_image);
title("OR Image: ");

intersection = uint16(intersect(i,j));
figure, imshow(intersection);
title("Intersection: ");