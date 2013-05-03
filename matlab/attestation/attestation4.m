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
x = -5:0.01:5;

for n=1:length(x)
	if x(n)<=0
		a(n)=0;
	elseif x(n)>1
		a(n)=x(n);
	else
		a(n)=1;
	end
end

plot(x,a)


