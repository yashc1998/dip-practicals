pkg load image;

i = imread("images/image_1.jpg");
neg_img = 255 - i;
imshow(neg_img);