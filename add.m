pkg load image

[i, map1] = imread("images/image_1.jpg");
[j, map2] = imread("images/image_2.jpg");


k = imadd(i,j);

imwrite(k,"images/added_image.jpg");

sub_image = imsubtract(k, j);
imshow(sub_image);