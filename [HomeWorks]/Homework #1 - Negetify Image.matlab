 %{
	Taklif:
	Tasvir ra Negative Konid
 %}
 % read Image and save it to a variable
 originImg = imread('cameraman.tif');
 modifiedImg = originImg;
 [m,n] = size(modifiedImg);
%{ 
Negatify Image Formula -> s = L - 1 - r
L = 2^l
s: New Brightness Value
small (l): Bits of Pciture
Big (L): 2^l
r: Old Brightness Value
%}
l = 2^8;
l2 = l-1;

for i=1:m
	for j=1:n
		r = modifiedImg(i,j);
		s = l2 - r;
		modifiedImg(i, j) = s;
	end
end
subplot(1,2,1),imshow(originImg)
subplot(1,2,2),imshow(modifiedImg)
