function [] = M2_main_001_09(data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% M2 Main Function
%
% Function Call
% M2_main_001_09
%
% Input Arguments
% data - the file 'Data_nextGen_KEtesting_allresults.csv'
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:     M2, Main
%   Team member:    Brian Sessa, sessa@purdue.edu [repeat for each person]
%   
%   Team ID:        001-09
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% SMALLEST LENGTH GOES TO ROW 1147 (t = 1142 seconds)

t = data(5:end,1);
i = 2;

%% ____________________
%% CALCULATIONS


while i <= 101
    v = data(5:end,i);
    S = data(3,i);
    vi = vi_gen(v);
    i = i + 1;
end

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



