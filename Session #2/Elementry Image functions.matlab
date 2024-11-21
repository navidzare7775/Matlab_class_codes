% read Image and save it to variable a
a = imread('cameraman.tif');
b = imread('rice.png');
eqHistImgA = histeq(a);
% c = a + b;

 % Show image
 % imshow(a);
 % Shows histogram of image
 % imhist(a)

%{
 Note: Each Display Function will be overwritte the other window,
 use figure to use display in 2 different windows like so:
%}
 % figure,imshow(a)
 % figure,imhist(a)
 % figure, imshow(eqHistImgA)
 % figure, imhist(eqHistImgA)
 % figure,imshow(b)
  % figure,imshow(c)

 % We are Rearagning the windows a lot we can make matlab do this automatiaclly ourselveves using this:
 subplot(2,2,1),imshow(a)
 subplot(2,2,2),imhist(a)
 subplot(2,2,3),imshow(eqHistImgA)
 subplot(2,2,4),imhist(eqHistImgA)





