% 
clear; clc;

% define a function
y=@(x) x^2-1;

% define the interval
L=0
R=5

% define the solver

for n=1:100	% set iteration
	xm = 1/2*(L+R);
	if y(L)*y(xm)<0
		R=xm;	% root in [L xm]
	else
		L=xm;	% root in [xm R]
	end
end

Root=xm		% we define a new variable
		% that will represent the result