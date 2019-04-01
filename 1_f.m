pkg load image;

i = imread("images/image_1.jpg");

red = i(:, :, 1);
green = i(:, :, 2);
blue = i(:, :, 3);

% all black image
all_black = zeros(size(i, 1), size(i, 2), 'uint8');

just_red = cat(3, red, all_black, all_black);
just_green = cat(3, all_black, green, all_black);
just_blue = cat(3, all_black, all_black, blue);

new_orig_img = cat(3, red, green, blue);

montage([just_red, just_green, just_blue, new_orig_img]);