function students = getInput(students,grade)

	check = 'y';
	checkString = 'Do you want to input more student and grade (y/n)?';
	students = containers.Map();
	while check == 'y'
		name = '';
		igrade = 0;
		nameString = 'name? ';
		name = input(nameString,'s');

		s = strcat(name,' homework grade?  ');
		homework = input (s);

		s = strcat(name,' quiz grade?  ');
		quiz = input (s);

		s = strcat(name,' exam grade? (the average of final and midterm)');
		exam = input(s);

		aStudentGrade = {homework,quiz,exam};
		scoreName = {'homework','quiz','exam'};
		scoreMap = containers.Map(scoreName,aStudentGrade);

		students(name) = scoreMap;
		
		check = input(checkString,'s');
	
	endwhile

end