%%%%% Exercise 4.4 - Game 'Guess a number'

clear;
clc;

% maximum number to guess
N = 5;

% counter for guesses
nTry = 0;

% generate a random number between 0 and N
nRandom=floor(rand(1)*(N+1));

gameover = 0;

while(gameover==0)

	% promt the user and put the result in the variable 'guess'
	guess = input('Guess the Number: ');
	
	% count the guesses
	nTry = nTry+1;

	% compare the guess with the generated random number
	if	guess==nRandom
		fprintf('Yes, this is correct!\n');
		gameover = 1;
	else
		fprintf('nope, that is not right!\n');
		if(guess>nRandom)
			printf("\nThe number is smaller!\n");
		else
			printf("\nThe number is greater!\n");
		end
	end

	if gameover==1 % gameover by a right guess, raise gamers self-confidence
		printf("\nNot bad... not bad...\n")
	elseif nTry>=3 % gameover by failing, make gamer play again
		gameover=1;
		printf("Don't blame yourself and insert another coin!\n")
	end
end

% the sound-stuff is a bit tricky on octave so I skip that part
