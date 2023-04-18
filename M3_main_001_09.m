function [Mconstant, maxVel, initVel] = M3_main_001_09(KEtesting)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% M2 Main Function
%
% Function Call
% M2_main_001_09
%
% Input Arguments
% KEtesting - the file 'Data_nextGen_KEtesting_allresults.csv'
%
% Output Arguments
% Mconstant - vector of Michaelis constants for each enzyme
% maxVel - vector of max velocities for each enzyme
% initVel - matrix of initial velocities for each test of each enzyme
% Assignment Information
%   Assignment:     M2
%   Author:         Brian Sessa, sessa@purdue.edu
%                   Sam Lightle, clightle@purdue.edu
%                   Matthew Duerksen, mduerkse@purdue.edu
%                   Aaron Slamovich, aslamovi@purdue.edu
%   Team ID:        001-09
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% SMALLEST LENGTH GOES TO ROW 1147 (t = 1142 seconds)

roughdata = readmatrix("Data_PGOX50_enzyme.csv", NumHeaderLines=3);
data = M2_smoothData_001_09(roughdata); %smoothes the data
r = 0; %loop control variable 


%% ____________________
%% CALCULATIONS

while r < 1
    %P = data((5:1143),(2+20*r):(22+20*r-1)); %extracts concentration data for the enzyme
    P = data((6:1143),(2:11)); %extracts concentration data for the enzyme
    S = data(1,2:11); %extracts initial concentation data for the enzyme
    [vi, K, Vmax] = M2_parameterID_001_09(P,S); %parameter identification
%     disp(vi)
%     disp(K)
%     disp(Vmax)
    n = 1; %loop control variable
    Mconstant(r+1) = K; %stores all michaelis constants into a vector
    maxVel(r+1) = Vmax; %stores all max velocities in a vector
    n = 1;
    while n <= 10
        initVel(n,r+1) = vi(n); %stores initial velocity data in a matrix
        n = n + 1;
    end
    r = r + 1;
end

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



