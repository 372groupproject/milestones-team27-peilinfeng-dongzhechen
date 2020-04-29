function showGraph(totalGrade,detail)
	gradeArray = [];
	grades = totalGrade.values;
	for i = 1 : length(grades)
		gradeArray(i) = grades{i};
	endfor

	bar(gradeArray);
	xticks(1:length(grades));
	xticklabels(totalGrade.keys);
	xlabel('student name');
	ylabel('student final score');
	title('All students total grades');
	s = 'Do you want to check single student each score?(y/n) ';
	check = input(s,'s');
	while check == 'y'
		close
		disp('Student list:');

		for i = 1: length(grades)
			studentName = totalGrade.keys{i};
			fprintf( "%s\n", studentName);

		endfor

		doGrapgh(detail);

		check = input(s,'s');
	endwhile
	
	if check ~= 'y'
		close
	endif

	disp('student grade checking program end');
end

function doGrapgh(detail)
	c = 'Which student score do you want to check?';
	name = input(c,'s');
	nameSet = detail.keys;
	check = 1;
	while check

		for i = 1: length(nameSet)
			if strcmp(name,nameSet{i}) == 1
				check = 0;
			endif
		endfor

		if check == 1
			c = 'Sorry your input student name doese not exit, please input again ';
			name = input(c,'s');
		endif

	endwhile

	M = detail(name);

	y = M.values;
	yArray = [];

	for i = 1 : length(y)
		yArray(i) = y{i};
	endfor

	bar(yArray);
	xticks(1:length(yArray));
	xticklabels(M.keys);
	t = strcat(name,' score detail');
	title(t);
end