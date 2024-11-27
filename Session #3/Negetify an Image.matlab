a = imread('cameraman.tif');
figure,imshow(a);
[m,n] = size(a);
for i=1:m
	for	j=1:n
		% If the next Line is without SemiColon the output of each calculation will be outputed to console
		a(i,j) = 255 - a(i,j);
	end
end
figure,imshow(a)