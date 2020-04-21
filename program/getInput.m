function [students,grade] = getInput(students,grade)

	check = 'y';
	checkString = 'Do you want to input more student and grade (y/n)?';
	index = 1;
	while check == 'y'
		name = '';
		igrade = 0;
		nameString = 'name? ';
		name = input(nameString,'s');
		s = strcat(name,' grade?  ');
		igrade = input (s);
		students(index) = name;
		grade(index) = igrade;
		check = input(checkString,'s');
		index ++;
	
	endwhile

end