pkg load image;

i = imread("images/image_1.jpg");
i = im2bw(i);

imshow(i);
title("Black & White Image");