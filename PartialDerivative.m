% Partial Derivative of a quadratic function
% Matlab version R2018b
% Date: 19th October, 2018
% Created by Sri. Soumyabrata Bhattacharjee
% email id: s.bhattacharjee@rgi.edu.in
clc
clear
%% Taking inputs from user
sc = inputdlg('Type an expression that is a function of x & y ' );    % Taking the equation as input from the user
s = sc{:};                                                            % Function String
f = str2func(['@(x,y) ' s])
x = input ('Enter the value of x: ');
y = input ('Enter the value of y: ');
z = feval (f,x,y);
x1 = x + .000001 * x;
y1 = y + .000001 * y;
zx = feval (f,x1,y);
zy = feval(f,x,y1);
del_fx = (zx-z)/(.000001*x);
del_fy = (zy-z)/(.000001*y);
fprintf('The partial derivative at %f & %f with respect to x is %f & that with respect to y is %f \n',x,y,del_fx,del_fy );