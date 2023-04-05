function [vi, K, Vmax] = M2_parameter_ID(P,S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Identifies the three necessary parameters for enzyme analysis
%
% Function Call
% parameter_ID
%
% Input Arguments
%  P - a matrix whose columns are vectors are every test of a substance
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
    while n <= 1143
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

% Eadie-Hofstee Linearization
% x-values are vi
% y values are vi/S

EHy = vi./S; %creates linearized y-values

% Linear regression equations
xbar = mean(vi); 
ybar = mean(EHy);
xybar = mean(vi.*EHy);
x2bar = mean(vi.^2);
a = (xbar.*ybar - xybar) ./ (xbar.^2 - x2bar); %slope of linear model of linearized data
b = ybar - a.*xbar; %y-intercept
K = -a; %Michaelis constant is equal to the negative slope
Vmax = b; %max velocity



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



