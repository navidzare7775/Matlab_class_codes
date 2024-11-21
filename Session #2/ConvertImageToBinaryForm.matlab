% read Image and save it to variable a
a = imread('cameraman.tif');
% Get the Image size of image -> a
figure,imshow(a)
% Binary => 0 , 1
[m,n] = size(a)
for i= 1:m
    for j= 1:n
        if a(i ,j) >=0 && a(i, j) < 128
            a(i ,j) = 0;
        elseif a(i ,j) >=128 && a(i ,j) <= 255
            a(i ,j) = 1;
        else
            disp('error!')
        end
    end
end
% use [] to show  both High(Dark) and minimum of image (Bright)
figure,imshow(a, [])