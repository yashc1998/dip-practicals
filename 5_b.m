#clear variables and command window
clc;
clear all;

pkg load image;

I = imread('images/cameraman.tif');

[m,n] = size(I);
numofpixels=m*n;

#Original Image
figure,imshow(I);
title('Original Image');

HIm = uint8(zeros(m,n));

#freq counts the occurrence of each pixel value.
freq=zeros(256,1);

#The probability of each occurrence is calculated by probf.
probf=zeros(256,1);

probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);

#Calculating frequency and probability
for i=1:size(I,1)
  for j=1:size(I,2)
    value=I(i,j);
    freq(value+1)=freq(value+1)+1;
    probf(value+1)=freq(value+1)/numofpixels;
  end
end

sum=0;
no_bits=255;

%The cumulative distribution probability is calculated. 
for i=1:size(probf)
   sum=sum+freq(i);
   cum(i)=sum;
   probc(i)=cum(i)/numofpixels;
   output(i)=round(probc(i)*no_bits);
end

for i=1:size(I,1)
  for j=1:size(I,2)
    HIm(i,j)=output(I(i,j)+1);
  end
end

figure,imshow(HIm);
title('Histogram equalization');