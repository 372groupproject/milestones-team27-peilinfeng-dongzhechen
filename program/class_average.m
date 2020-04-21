function class_average (grade)

	a = 0.0;
	str = 'Do you want to check class average score? (y/n)';
	a = input(str,'s');

	if a == 'y'
		sum = 0;
		for i = 1:length(grade)
			sum = sum + grade(i);

		endfor

		a = sum/length(grade);
		fprintf("class average is %f \n",a);
	endif

end