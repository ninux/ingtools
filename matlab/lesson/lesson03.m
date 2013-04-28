%%%%% Lesson 3
clear; clc;

% Ordinary Differential Equations (ODE)

% in octave we have to install the odepkg
% and load it before we use an ode-function
pkg load odepkg;


% find the interval
ts = 0; 
te = 10;

% initial conditions (values)
x0 = 1;

% definition of the given ODE (right hand side)
% x'(t) = sin(x(t))+5
ode1 = @(t,x) sin(x) + 5;

% solve the ODE
[t,x]= ode45(ode1,[ts te],x0);
plot(t,x)

%%%%% Chapter 3.2, Example 3.1

% define the interval (start and end)
xs = 0;	% start at 0
xe = 5;	% end at 5

% intial conditions
y0 = 1;

% define the right hand side of the ODE y'=-2*x*y
ode_31 = @(x,y) -2*x*y;

% solve the ode
[x, y] = ode45(ode_31, [xs, xe], y0, 1e-30);

%plot the solution
plot(x,y)
xlabel('x');
ylabel('y');

%%%%% Exercise 3.2

% define the interval
xs = -3;
xe = 6;

% initial conditions
t0 = 2;	% the initial condition describes
	% what value is given for the first
	% element on the interval e.g. 
	% whats the result at the start

% define the right hand side of the ODE
ode_32 = @(x,t) 5-sqrt(t)*x(t)^2;

% solve the solution
[x,y] = ode45(ode_32, [xs,xe], t0);

% the solution but in one line!!!
[t,x]=ode45(@(t,x) 5-sqrt(t)*x^2, [-3,6],2);
plot(t,x)

%%%%% Example 3.3
clear; clc;

% define the interval
ts = 0;
te = 15;

% initial condition
y1_0 = 1.1;
y2_0 = 1.8;

% define system as column vector 
ode_system = @(t,y) [y(1)*(1-y(2)); -y(2)*(1-y(1))];

% solve the system 
[t,y] = ode45(ode_system, [ts, te], [y1_0; y2_0]);

% plot solution
plot(t,y);
xlabel('t');
ylabel('y');
legend('y1','y2');

%%%%% Example 3.4 - Second Order ODE
clear; clc;
% define the interval
ts = 0;
te = 10;

% define the initial conditions
x1_0 = 0;
x2_0 = 2;

% define system 
ode_system = @(t,x) [x(2); -9*x(1)-2*x(2)];

% solve the system
[t,x] = ode45(ode_system, [ts, te], [x1_0; x2_0]);

plot(t,x(:,1))