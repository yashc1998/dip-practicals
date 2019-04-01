pkg load image;

I =imread("images/image_1.jpg");
figure;
subplot(1,2,1); imshow(I);
subplot(1,2,1); imhist(I);
imh = imadjust(I,[0.3,0.6],[0.0,1.0]);