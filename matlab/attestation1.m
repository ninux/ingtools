%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subject:	Ingeneer Tools
% File:	Attestation 1 - SW07 ("sw07.m")
% Author:	Ervin Mazlagic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Preparations
clear	% clear the workspace
clc	% clear the screen

%%%%% Exercise 1.1 a)
u1 = [0.8:0.1:2.7];
u1

%%%%% Exercise1.1 b)
u2 = [1:1000].^2;
u2

%%%%% Exercise 1.1 c)
u3 = [1000:-2:2];
u3

%%%%% Exercise 1.1 d)
u4 = [1:100].*(-1).^[0:99];
u4

%%%%% Exercise 1.1 e)
% this is a difficult one because we have to define a fibonacci-function
fib = [1,1];	% define the start-values
while fib(end) < 6765;	% define the conditions
	fib = [ fib, (fib(end) + fib(end-1))];
end
fib;

%%%%% Exercise 1.2 a)
u6 = sum(1:100);
u6

%%%%% Exercise 1.2 b)
u7 = sum((1:1000).^2);
u7

%%%%% Exercise 1.2 c)
u8 = prod((1:20)./(1:20).^0.5);
u8

%%%%% Exercise 1.3 a)
a = [0:0.1:1];
a.^3

%%%%% Exercise 1.3 b)
sin(sqrt(1./a))

%%%%% Exercise 1.3 c)
exp(a.^2)

%%%%% Exercise 1.4
clear	% cleared the previous definitions and values
ma = [	1, 3, 4, 6;	% defined a matrix for the coefficients
	-1, 4, 0, 1;
	0, 1, -10, 8;
	0, 0, 0, 5]
mb = [ 2; 1; 8; 1]	% defined a matrix for the results

x = ma\mb	% calculating e.g. solving the system of linear equations

ma*x	% check if the results are correct

%%%%% Exercise 1.5 
clear
A = [	-2, 0, 3;
	2, 4, 0;
	1, 0, 0]
	
%%%%% Exercise 1.5 a)
det(A)
inv(A)

%%%%% Exercise 1.5 b)
[ev, ew] = eig(A);