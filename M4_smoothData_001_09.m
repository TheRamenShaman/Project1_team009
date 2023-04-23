function [smooth_dat] = M4_smoothData_001_09(data)

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

data1 = data(5:end, 2:end); 
for r = 1:length(data1)
    for i = 1:width(data1)
        if isnan(data1(r,i))
            data1(r,i) = 0;
        end
    end
end
    
for r = 1:10
    vector = movmean(data1(1:end,r),10);
    for i = 1:1139
        smooth_dat(i,r) = vector(i,1);
    end
end

% smooths data                                 % readjusts the data 
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
