clear

tic	% start measuring time
a = zeros(1, 1000000);
for n=1:1000000
	a(n) = sin(n);
end
toc	% end measuring time
