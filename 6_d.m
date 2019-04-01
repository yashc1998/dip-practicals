#clear variables and command window
clc;
clear all;

A=imread('images/cameraman.tif');
f=input('Enter the shrinking factor of the image: ');
s=size(A);
s1=s/f;
k=1;
l=1;

for i=1:s1
    for j=1:s1
        B(i,j)=A(k,l);
        l=l+f;
    end
    l=1;
    k=k+f;
end

figure,imshow(A)
title('Original Image');
figure,imshow(B)
title('Shrinked Version');