% Example 4.5 - Definition on a Hilbert-Matrix

k = 8
for m = 1:k
	for n = 1:k
		A(m,n) = 1/(m+n -1);
	end
end
A
