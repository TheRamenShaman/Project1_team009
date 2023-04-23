function [r2, SSE, Vo, VoModel] = M3_MM_PGOX50_001_09(data,S,time)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Creates the Michaels-Menten model based off of the given Vmax and Km
%
% Parameters
%   1. data - the file 'Data_PGOX50_enzyme.csv'
%
% Outputs
%   1. r2 - scalar of the r-squared value found from the regression analysis
%   2. SSE - scalar of the sum of squared errors of the data and michaels-menten
%   model
%   3. Vo - vector of the reference initial velocity values given in part 2A
%   4. VoModel - vector of initial velocities found from the
%   Michaelis-Menten parameters given
% Assignment Information
%   Assignment:     M3
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

%% INITIALIZATION

Vmax = 1.806; %given max velocity
Km = 269.74; %given michaelis constant
Vo = [.025,.049,.099,.176,.329,.563,.874,1.192,1.361,1.603]; %given initial velocity values

%% CALCULATIONS

for i = 1:length(S)
    VoModel(i) = (Vmax*S(i))/(Km + S(i)); % creates y-values for michaels-menten equation
end

SSE = 0;
for i = 1:length(Vo)
    SSE = SSE + (Vo(i)-VoModel(i))^2; %calculates SSE
end

SST = 0;
ybar = mean(Vo);
for i = 1:length(Vo)
    SST = SST + (ybar - Vo(i))^2; %calculates SST
end

r2 = 1 - SSE/SST; %calculates r2 value

%% FIGURE DISPLAYS

figure()
sgtitle('Enzyme Concentrations vs. Time (Tests 1-5 on top, Tests 6-10 on bottom)')
for i = 1:length(S)
    line = time * Vo(i);
    subplot(2,5,i)
    plot(time(1:1139),data(1:1139,i))
    hold on
    plot(time,line)
    xlabel('Time (s)')
    ylabel('Concentration (uM)')
    grid on
end

figure()
plot(S,Vo,'ms')
title('Initial Velocities vs. Substrate Concentration')
xlabel('Concentration (uM)')
ylabel('Initial Velocity')
grid on
hold on
plot(S,VoModel,'bd')
legend('Recorded Data','Model Predictions')
                                                                  
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.

