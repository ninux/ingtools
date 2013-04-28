% a nice way to do transformations

clear; clc;
P = [0,1,1,0;0,0,1,1];

A = [1,1;0,1];

Ptran = A*P;	% make a transformation of P with A

subplot(1,2,1);
fill(P(1,:),P(2,:),'red');
axis([-3 3 -3 3]); axis square

subplot(1,2,2);
fill(Ptran(1,:),Ptran(2,:),'green');
axis([-3 3 -3 3]); axis square