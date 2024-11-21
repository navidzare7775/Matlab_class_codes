numStars = input('Input the number of stars(*) that wants to be printed')
for i= 1:numStars
	for j= i:numStars
		fprintf('*');
    end
   fprintf('\n');
end