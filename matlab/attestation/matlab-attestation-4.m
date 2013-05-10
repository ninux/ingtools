
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subject:	Engineer Tools
% File:		Attestation 4 - SW10
% Author:	Ervin Mazlagic
% Date:		Mai 3. 2013
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Preparations
clear;	
clc;

%%%%% Exercise 4.1
x = -5:0.01:5;	% define the use interval and grid

for n=1:length(x)	% for each defined x
	if x(n)<=0
		a(n)=0;	% if x<=0 then y=0
	elseif x(n)>1
		a(n)=x(n); % if x>1 then y=x
	else
		a(n)=1;	% if x is not <=0 and it's not >1 then it has to be 1
	end
end

plot(x,a)	% plot the piecewise defined function

%%%%% Exercise 4.2 a)
clear;
N = 20	% number of fibonacci-values

fib = zeros(1, N);	% prepare a vector for the sequence

fib(1) = 1;	% give the initial values
fib(2) = 1;	% ...

for n=3:N	% define iteration (start after the predefined initial values)
	fib(n) = fib(n-2)+fib(n-1);	% calculate the n-th element
end	
fib	% show the vector (sequence)

%%%%% Exercise 4.2 b)
clear;
N = 20;	% number of fibonacci-values
B = 6000; % Border

fib = zeros(1, N);

fib(1) = 1;
fib(2) = 1;

n = 3;

while fib(n-1)<B	% while the 'n-1'th value is smaller than the border
	fib(n) = fib(n-2) + fib(n-1); 	% calculate the n-th element
	n = n+1;	% increment n by one
end
fib	

%%%%% Exercise 4.3

% see 'Cel2Far.m'


function Temp=Cel2Far(cel, exact)

% Cel2Far is a simple calculator to get a given temperature in Celsius 
% converted to Farenheit.
% Function: Cel2Far(cel, exact)
% Input: 
%	cel	Temperature in degree Celsius (float)
%	exact	if seti, the function returns float numbers, else integers
% Output: Temperature in degree Farenheit as int or float (see 'exact')
% Example: Cel2Far(28)
% Developer: Ervin Mazlagic

far = cel*(9/5)+32;
if nargin<2
	printf("%i degree Celsius is about %i degree Farenheit\n", cel, far)
	printf("If you want the exact temperature use Cel2Far(%i,1)\n",cel)
else
	printf("%f degree Celsius is exactly %f degree Farenheit\n", cel, far)
end
endfunction


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
