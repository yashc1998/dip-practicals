pkg load image

[i, map1] = imread("images/image_1.jpg");
[j, map2] = imread("images/image_2.jpg");

k = imadd(i,j);

imshow(k);