function [vi, K, Vmax] = M2_parameterID_001_09(P,S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Identifies the three necessary parameters for enzyme analysis
%
% Function Call
% parameter_ID
%
% Input Arguments
%  P - a matrix whose columns are vectors are every test of an enzyme
%  (includes duplicates)
%  S - a vector of initial concentrations for each test (does not include
%  duplicates)
% Output Arguments
%  vi - length 10 vector of initial velocities for the tests
%  K - Michaelis constant (scalar)
%  Vmax - maximum reaction rate (scalar)
% Assignment Information
%   Assignment:     M2
%   Author:         Brian Sessa, sessa@purdue.edu
%                   Sam Lightle, clightle@purdue.edu
%                   Matthew Duerksen, mduerkse@purdue.edu
%                   Aaron Slamovich, aslamovi@purdue.edu
%   Team ID:        001-09
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% ACTUAL INITIALIZATION
i = 1;
while i <= 10
    n = 1;
    while n <= 1139
        test(n,i) = (P(n,i) + P(n,i+10))./2;
        n = n + 1;
    end
    i = i + 1;
end

%% ____________________
%% CALCULATIONS

% Calculates vi for each test
i = 1;
while i <= 10
    vi(i) = test(11,i)./10;
    i = i + 1;
end

% Lineweaver-Burk Linearization
% x-values are 1/S
% y values are 1/vi

% Linearization Calculations
liny = 1./vi; %creates linearized y-values
linx = 1./S; %creates linearized x-values
xbar = mean(linx); %average x - value
ybar = mean(liny); %average y - value
xybar = mean(linx.*liny); %average product of x and their respective y values
x2bar = mean(linx.^2); %average of x squared values
a = (xbar.*ybar - xybar) ./ (xbar.^2 - x2bar); %slope of linear model of linearized data
b = ybar - a.*xbar; %y-intercept
Vmax = 1/b; %max velocity
K = Vmax*a; %Michaelis constant


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



