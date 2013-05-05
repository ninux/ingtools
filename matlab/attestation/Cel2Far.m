function Temp=Cel2Far(cel, exact)

% Cel2Far is a simple calculator to get a given temperature in Celsius 
% converted to Farenheit.
% Function: Cel2Far(Temperature in Celsius)
% Input: 
%	cel	Temperature in degree Celsius (float)
%	exact	if set the function returns float numbers, else integers
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
