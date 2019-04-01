pkg load image;

i = imread("images/image_1.jpg");
i_gray = rgb2gray(i);

imshow(i_gray);