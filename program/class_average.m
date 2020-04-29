function  n = class_average (grade)
	
	n = containers.Map();
	a = 0.0;
	keySets = grade.keys;
	sum = 0;
	for i = 1:length(keySets)
		name = keySets{i};
		score = getGrade(grade(name));
		n(name) = score;
		sum = sum + score;

	endfor

	a = sum/length(grade);
	fprintf("class average is %f \n",a);


end

function score = getGrade (maps)
	score = 0;
	score = score + maps('homework') * 0.4;
	score = score + maps('quiz') * 0.1;
	score = score + maps('exam') * 0.5;
end