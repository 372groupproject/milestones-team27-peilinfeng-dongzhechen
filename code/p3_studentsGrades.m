function p3_studentsGrades
	students = ["Mike";"Bob";"Jack";"Michael";"Jhon"];
	finalScore = [89.1;92.0;69.9;80.1;72.1];
	for i = 1 : size(students,1)
		CSC372(i).name = students(i,:);
		CSC372(i).score = finalScore(i);
		if finalScore(i) >= 90.0
			CSC372(i).grade = 'A';
		elseif  finalScore(i) >= 80.0
			CSC372(i).grade = 'B';
		elseif finalScore(i) >= 70.0
			CSC372(i).grade = 'C';
		elseif finalScore(i) >= 60.0
			CSC372(i).grade = 'D';
		else
			CSC372(i).grade = 'E';
		end
	end

	for i = 1 : length(CSC372)
		fprintf('%s final score is %.1f, the final grades is %c\n',CSC372(i).name,CSC372(i).score,CSC372(i).grade);
	end
end