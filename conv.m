pkg load image;

%I = imread ("https://i-cdn.phonearena.com/images/article/105457-two_lead/Google-pushes-out-June-security-patch-for-Pixel-and-some-Nexus-handsets.jpg");
I = imread("/home/yash/Downloads/DIP Images/finger_print.png");
#Filters
laplcian = [0 -1 0; -1 4 -1; 0 -1 0];
box_blur = ones(3,3)/9;
hor_lines = [-1 -1 -1; 2 2 2; -1 -1 -1];

C = convn (I, box_blur, "same");
#C = uint8(C/max(C(:))*255);
figure, imshow(I);
figure, imshow(C);
imwrite(C, "Conv_Image.jpg");