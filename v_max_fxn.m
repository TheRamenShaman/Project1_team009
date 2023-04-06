% function [v_max] = v_max_fxn(conc_data, v0_data)

% source link - https://cran.r-project.org/web/packages/renz/vignettes/Linearized_MM.html

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description -
%
% Function Call - v_max_fxn
%
% Input Arguments - conc_data: data about the concentrations of each test
%                   v0_data: data about the v0 for each test
%   
%
% Output Arguments - v_max: maximum initial velocity found using
% linearzatioin of the michaelis-menten equation
%
% Assignment Information
%   Assignment:     M02, Problem Vmax identification
%   Team member:    Sam Lightle, clightle@purdue.edu;
%                   Brian Sessa, sessa@purdue.edu;
%                   Matthew Duerksen, mduerkse@purdue.edu;
%                   Aaron Slamovich, aslamovi@purdue.edu
%
%   Team ID:        01-009
%   Academic Integrity:
%     [x] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Sam Lightle, clightle@purdue.edu;
%                           Brian Sessa, sessa@purdue.edu;
%                           Matthew Duerksen, mduerkse@purdue.edu;
%                           Aaron Slamovich, aslamovi@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

data = readmatrix("Data_nextGen_KEtesting_allresults.csv");
S = data(3,2:11);         % input - remove in function
vi = data(15, 2:11)./10;  % input - remove in function
vi_lin = 1 ./ vi;         % inverse of vi for linearzation
S_lin = 1 ./ S;           % inverse of S for linearzatioon
%% ____________________
%% CALCULATIONS

% plots model and data
figure;
hold on
grid on
plot(S_lin, vi_lin,"mo")
lin_model = S_lin * lin_var(1) + lin_var(2);
plot(S_lin, lin_model,"k");

% uses linear model to determine k_max by plugging in the highest x value 
lin_var = polyfit(S_lin, vi_lin, 1);
x_max = 2000;
v_max_inv = 1 ./ ( (lin_var(1) ./ x_max) + lin_var(2) );
v_max = 1/v_max_inv;
v_max_ez = max(vi);
%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



