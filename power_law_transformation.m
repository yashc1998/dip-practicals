pkg load image

i = imread("images/spine_dark.jpg");

disp(i(1:10));

i = power(i, 0.6);

i_log = log(1+i);
imshow(i_log);

#imshow(i);
#disp(i(1:10));
#imwrite(i, "spine_dark_transform.jpg");