
[file,loc] = uigetfile('*.jpg', 'Image Processing');
% Reading the Image
file = imread(file);
% Convert RGB -> Gray
grayFile = rgb2gray(file);
grayFiletoShow = grayFile;
[m,n] = size(grayFile);
for i=1:m
	for j=1:n
		if grayFile(i,j) >=0 && grayFile(i,j) <= 50
			grayFile(i,j) = 40;
		elseif grayFile(i,j) > 50 && grayFile(i,j) <= 127
			grayFile(i,j) = 100;
		elseif grayFile(i,j) > 127 && grayFile(i,j) <= 180
			grayFile(i,j) = 170;
		else
			grayFile(i,j) = 255;
		end
	end
end
subplot(3,2,1),imshow(file)
subplot(3,2,2),imhist(file)
subplot(3,2,3),imshow(grayFiletoShow)
subplot(3,2,4),imhist(grayFiletoShow)
subplot(3,2,5),imshow(grayFile)
subplot(3,2,6),imhist(grayFile)
