function p2_somethingelse
disp('Guess a number from 1 to 100 you have 10 chance');
C = 10;
Guess = 0;
a = 'Your number? ';
number = randi(100);
while C > 0
	Guess = input(a);
	if Guess > number
		disp('Your number is larger than random number');
	elseif Guess < number
		disp('Your number is smaller than random number');
	else
		disp('You win!');
		break;
	endif
	C = C - 1;
	if C == 0
		disp('you lose');
		break;
	endif
	fprintf('You have %d more chance\n',C);

endwhile
end
