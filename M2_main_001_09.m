function [Mconstant, maxVel, initVel, data, roughData] = M2_main_001_09(KEtesting)
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

roughData = readmatrix(KEtesting);
data = M2_smoothData_001_09(roughData); %smoothes the data
r = 0; %loop control variable 


%% ____________________
%% CALCULATIONS

while r < 5
    P = data((5:1143),(2+20*r):(22+20*r-1)); %extracts concentration data for the enzyme
    S = roughData(3,2:11); %extracts initial concentation data for the enzyme
    [vi, K, Vmax] = M2_parameterID_001_09(P,S); %parameter identification
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

plot(roughData(5:end,1),roughData(5:end,2))
hold on
plot(roughData(5:end,1),data(5:end,1))

figure()
plot(S,initVel(1:end,1))
figure()
plot(S,initVel(1:end,2))
figure()
plot(S,initVel(1:end,3))
figure()
plot(S,initVel(1:end,4))
figure()
plot(S,initVel(1:end,5))



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



