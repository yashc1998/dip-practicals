pkg load image;

i = imread("images/image_1.jpg");

[m,n] = size(i);

pixel_sum = 0;

i = double(i);

for k = 1:m
  for j = 1:n
    pixel_sum += i(k,j);
  endfor
endfor

px_mean = pixel_sum/(m*n);
disp("Mean of the image: "), disp(px_mean);