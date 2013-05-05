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


