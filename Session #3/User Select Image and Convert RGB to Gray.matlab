
[a,c] = uigetfile('*.jpg', 'select');
% Reading the Image
a = imread(a);
% Convert RGB -> Gray
b = rgb2gray(a);
imshow(b);