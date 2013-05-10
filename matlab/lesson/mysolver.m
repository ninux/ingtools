function Root=mysolver(y,Interval,N)

if nargin<3 % number of input arguments
	N=100;
end
	
L=Interval(1);
R=Interval(2);

% check if the solution exists
if y(L)*y(R)>0
	error('bad choice!!!')
end

% define the solver
for n=1:N	% set iteration
	xm = 1/2*(L+R);
	if y(L)*y(xm)<0
		R=xm;	% root in [L xm]
	else
		L=xm;	% root in [xm R]
	end
end

Root=xm		% we define a new variable
		% that will represent the result
		
endfunction


