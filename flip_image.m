pkg load image;

i = imread("images/image_1.jpg");
flip_image = fliplr(i);

imshow(flip_image);