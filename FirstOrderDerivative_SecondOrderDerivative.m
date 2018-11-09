% First order & second derivative at a point of an equation
% Matlab version R2018b
% Date: 19th October, 2018 (Original Created)
%     : 9th November, 2018 (First modification)
% Created by Sri. Soumyabrata Bhattacharjee
% email id: s.bhattacharjee@rgi.edu.in
clc
clear
%% Taking inputs from user
sc = inputdlg('Type an expression that is a function of x ' );    % Taking the equation as input from the user
s = sc{:};                                                            % Function String
f = str2func(['@(x) ' s])
% Compute f'(x)
x1 = x + .000001 * x;
f_dash_x = (feval(f,(x+x1))-(feval(f,(x-x1))))/(2*x1);
fprintf('The first order derivative at %f is %f \n',x,f_dash_x);
% Compute f''(x)
f_doubledash_x = (feval(f,(x+x1))-(2*feval(f,x))+(feval(f,(x-x1))))/(x1^2);
fprintf('The second order derivative at %f is %f \n',x,f_doubledash_x);