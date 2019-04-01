pkg load image;

i = imread("images/image_1.jpg");
i_half = imresize(i, 0.5); #image with half the size
i_double = imresize(i, 2); #image with double the size

figure, imshow(i_half);
title("Half the size");

figure, imshow(i_double);
title("Double the size");