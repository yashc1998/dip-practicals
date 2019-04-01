pkg load image

[i, map1] = imread("images/image_1.jpg");
[j, map2] = imread("images/image_2.jpg");

sub_image = imsubtract(i, j);
imshow(sub_image);