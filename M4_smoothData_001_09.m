%function [smooth_dat] = M2_smoothData_001_09(data)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description - this function takes data from any input matrix and
% smooths it out to help with interpretation
%
% Function Call - smooth_data
%
% Input Arguments - data - the data set you want to be smoothed
%   
%
% Output Arguments - data_smooth
%
% Assignment Information
%   Assignment:     M2
%   Team member:    Sam Lightle, clightle@purdue.edu
%                   Brian Sessa, sessa@purdue.edu
%                   Matthew Duerksen, mduerkse@purdue.edu
%                   Aaron Slamovich, aslamovi@purdue.edu
%
%   Team ID:        01-009
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data = readmatrix('Data_nextGen_KEtesting_allresults.csv'); % reads data
data1 = data(5:end, 2:end);                                 % adjusts size of data set
smooth_dat = smoothdata(data1');                            % smooths data
smooth_dat = smooth_dat';                                   % readjusts the data 
%x = data(5:end,1);                                % x value for plotting 


%% Plots for copmarison %%
%figure;
%hold on;
%grid on;
%i = 1;
%while i < 11

%    plot(x,smooth_dat(:,i));
%    i = i + 1;
%end
