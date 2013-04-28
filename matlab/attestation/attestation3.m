%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subject: 	Engineer Tools
% File: 		Attestation 3 - SW09 ("sw09.m")
% Author: 	Ervin Mazlagic
% Date: 		April 14, 2013
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Preparations
clear; clc;
pkg load odepkg;

%%%%% Exercise 3.1

% define interval
ts = 0;	% t-start
te = 8;	% t-end

% define initial conditions
y0 = 0;	% function-value for t-start

% define the ODE
ode_31 = @(t,y) [-2*y+sin(t)+exp(-t)];

[t,y] = ode45(ode_31, [ts, te], y0);

plot(t,y)
xlabel('y''(t)')
print -dpdf attestation_31.pdf

%%%%% Exercise 3.2

% define interval
ts = 0;	% t-start
te = 10;	% t-end 
 
% using substitutions to make a first order ODE
% y1 = x(t)
% y2 = x'(t)
% => y2' = x''(t)
% so we get a new system of equations:
% y2'(t) = -y1(t) - 0.2*y2
% y1'(t) = y2(t)

% define initial conditions
y1_0 = 1;	% y1 = x(t) -> x(0) = 1
y2_0 = 0;	% y2 = x'(t) -> x'(t) = 0

% define the ODE
ode_32 = @(t,y) [y(2); -y(1)-0.2*y(2)]

% solve the ODE
[t,y] = ode45(ode_32, [ts, te], [y1_0; y2_0]);

plot(t,y)
print -dpdf attestation_32.pdf

%%%%% Exercise 3.3

% define parameters
a1 = 10;
a2 = 1;

b1 = 1;
b2 = 0.4;

g1 = 2;
g2 = 0.01;

% define interval
ts = 0;	% t-start
te = 10;	% t-end

% define initial vlaues
P1_0 = 5;
P2_0 = 10;

% define the ODE system
ode_33 = @(t,P) [a1*P(1)-b1*P(1)^2-g1*P(1)*P(2); a2*P(2)-b1*P(2)^2-g2*P(1)*P(2)];

% solve the ODE system
[t,P] = ode45(ode_33, [ts, te], [P1_0, P2_0]);

plot(t,P)
print -dpdf attestation_33.pdf