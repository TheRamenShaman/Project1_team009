function [r2, SSE, Vo] = M3_MM_PGOX50_001_09(data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Creates the Michaels-Menten model based off of the given Vmax and Km
%
% Parameters
%   1. data - the file 'Data_PGOX50_enzyme.csv'
%
% Outputs
%   1. r2 - the r-squared value found from the regression analysis
%   2. SSE - the sum of squared errors of the data and michaels-menten
%   model
%   3. Vo - the reference initial velocity values given in part 2A
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
data = readmatrix(data);
Vmax = 1.806; %given max velocity
Km = 269.74; %given michaelis constant
Vo = [.025,.049,.099,.176,.329,.563,.874,1.192,1.361,1.603]; %given initial velocity values
S = data(5,2:end); %concentration 
time = data(7:end,1); %time

%% CALCULATIONS

for i = 1:length(S)
    v(i) = (Vmax*S(i))/(Km + S(i)); % creates y-values for michaels-menten equation
end

SSE = 0;
for i = 1:length(Vo)
    SSE = SSE + (Vo(i)-v(i))^2; %calculates SSE
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
    plot(time,data(7:end,i+1))
    hold on
    plot(time,line)
    xlabel('Time (s)')
    ylabel('Concentration (uM)')
    grid on
end

figure()
title('Initial Velocities vs. Substrate Concentration')
plot(Vo,S,'ms')
xlabel('Concentration (uM)')
ylabel('Initial Velocity')
grid on
hold on
plot(v,S,'bd')
legend('Recorded Data','Model Predictions')
                                                                  
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.

