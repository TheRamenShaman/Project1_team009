function [trial_A,trial_B,trial_C,trial_D,trial_E]=project_function_algorithm()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% The function above determines the V0 value with the input of the test
% type (A-E)
%
% Function Call
% project_function_algorithm
%
% Input Arguments
% The next-gen test, A-E is the input (the duplicate test is automatically
% included
%
% Output Arguments
% The output for this will be the smoothed data
%
% Assignment Information
%   Assignment:     M02, Problem 1
%   Team member:    Name, login@purdue.edu [repeat for each person]
%   Team ID:        001-09
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
% This is reading the original data and assigning it to a variable in the
% code, for each enzyme A-E
test_data=readmatrix('Data_nextGen_KEtesting_allresults(1).csv');
time=test_data(5:400,1);
trial_1A=test_data(5:400,2);
trial_11=smoothdata(trial_1A);
trial_2A=test_data(5:400,3);
trial_12=smoothdata(trial_2A);
trial_3A=test_data(5:400,4);
trial_13=smoothdata(trial_3A);
trial_4A=test_data(5:400,5);
trial_14=smoothdata(trial_4A);
trial_5A=test_data(5:400,6);
trial_15=smoothdata(trial_5A);
trial_6A=test_data(5:400,7);
trial_16=smoothdata(trial_6A);
trial_7A=test_data(5:400,8);
trial_17=smoothdata(trial_7A);
trial_8A=test_data(5:400,9);
trial_18=smoothdata(trial_8A);
trial_9A=test_data(5:400,10);
trial_19=smoothdata(trial_9A);
trial_10A=test_data(5:400,11);
trial_10=smoothdata(trial_10A);

trial_1B=test_data(5:400,22);
trial_21=smoothdata(trial_1B);
trial_2B=test_data(5:400,23);
trial_22=smoothdata(trial_2B);
trial_3B=test_data(5:400,24);
trial_23=smoothdata(trial_3B);
trial_4B=test_data(5:400,25);
trial_24=smoothdata(trial_4B);
trial_5B=test_data(5:400,26);
trial_25=smoothdata(trial_5B);
trial_6B=test_data(5:400,27);
trial_26=smoothdata(trial_6B);
trial_7B=test_data(5:400,28);
trial_27=smoothdata(trial_7B);
trial_8B=test_data(5:400,29);
trial_28=smoothdata(trial_8B);
trial_9B=test_data(5:400,30);
trial_29=smoothdata(trial_9B);
trial_10B=test_data(5:400,31);
trial_20=smoothdata(trial_10B);

trial_1C=test_data(5:400,42);
trial_31=smoothdata(trial_1C);
trial_2C=test_data(5:400,43);
trial_32=smoothdata(trial_2C);
trial_3C=test_data(5:400,44);
trial_33=smoothdata(trial_3C);
trial_4C=test_data(5:400,45);
trial_34=smoothdata(trial_4C);
trial_5C=test_data(5:400,46);
trial_35=smoothdata(trial_5C);
trial_6C=test_data(5:400,47);
trial_36=smoothdata(trial_6C);
trial_7C=test_data(5:400,48);
trial_37=smoothdata(trial_7C);
trial_8C=test_data(5:400,49);
trial_38=smoothdata(trial_8C);
trial_9C=test_data(5:400,50);
trial_39=smoothdata(trial_9C);
trial_10C=test_data(5:400,51);
trial_30=smoothdata(trial_10C);

trial_1D=test_data(5:400,62);
trial_41=smoothdata(trial_1D);
trial_2D=test_data(5:400,63);
trial_42=smoothdata(trial_2D);
trial_3D=test_data(5:400,64);
trial_43=smoothdata(trial_3D);
trial_4D=test_data(5:400,65);
trial_44=smoothdata(trial_4D);
trial_5D=test_data(5:400,66);
trial_45=smoothdata(trial_5D);
trial_6D=test_data(5:400,67);
trial_46=smoothdata(trial_6D);
trial_7D=test_data(5:400,68);
trial_47=smoothdata(trial_7D);
trial_8D=test_data(5:400,69);
trial_48=smoothdata(trial_8D);
trial_9D=test_data(5:400,70);
trial_49=smoothdata(trial_9D);
trial_10D=test_data(5:400,71);
trial_40=smoothdata(trial_10D);

trial_1E=test_data(5:400,82);
trial_51=smoothdata(trial_1E);
trial_2E=test_data(5:400,83);
trial_52=smoothdata(trial_2E);
trial_3E=test_data(5:400,84);
trial_53=smoothdata(trial_3E);
trial_4E=test_data(5:400,85);
trial_54=smoothdata(trial_4E);
trial_5E=test_data(5:400,86);
trial_55=smoothdata(trial_5E);
trial_6E=test_data(5:400,87);
trial_56=smoothdata(trial_6E);
trial_7E=test_data(5:400,88);
trial_57=smoothdata(trial_7E);
trial_8E=test_data(5:400,89);
trial_58=smoothdata(trial_8E);
trial_9E=test_data(5:400,90);
trial_59=smoothdata(trial_9E);
trial_10E=test_data(5:400,91);
trial_50=smoothdata(trial_10E);

%% ____________________
%% CALCULATIONS


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS
% Here are all the enzyme plotting codes, beginning with enzyme A
sgtitle('Time (s) vs concentration (uM) for enzymes A-E with different initial concentrations (uM)  (Enzyme, initial concentration)')
subplot(5,10,1)
plot(time,trial_11,'g-')
hold on
title('Enzyme A, 3.75')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,2)
plot(time,trial_12,'g-')
hold on
title('Enzyme A, 7.5')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,3)
plot(time,trial_13,'g-')
hold on
title('Enzyme A, 15')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,4)
plot(time,trial_14,'g-')
hold on
title('Enzyme A, 30')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,5)
plot(time,trial_15,'g-')
hold on
title('Enzyme A, 65')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,6)
plot(time,trial_16,'g-')
hold on
title('Enzyme A, 125')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,7)
plot(time,trial_17,'g-')
hold on
title('Enzyme A, 250')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,8)
plot(time,trial_18,'g-')
hold on
title('Enzyme A, 500')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,9)
plot(time,trial_19,'g-')
hold on
title('Enzyme A, 1000')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,10)
plot(time,trial_10,'g-')
hold on
title('Enzyme A, 2000')
xlabel('time')
ylabel('concentration')
grid on
% Here is the enzyme B plot code
subplot(5,10,11)
plot(time,trial_21,'g-')
hold on
title('Enzyme B, 3.75')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,12)
plot(time,trial_22,'g-')
hold on
title('Enzyme B, 7.5')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,13)
plot(time,trial_23,'g-')
hold on
title('Enzyme B, 15')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,14)
plot(time,trial_24,'g-')
hold on
title('Enzyme B, 30')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,15)
plot(time,trial_25,'g-')
hold on
title('Enzyme B, 65')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,16)
plot(time,trial_26,'g-')
hold on
title('Enzyme B, 125')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,17)
plot(time,trial_27,'g-')
hold on
title('Enzyme B, 250')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,18)
plot(time,trial_28,'g-')
hold on
title('Enzyme B, 500')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,19)
plot(time,trial_29,'g-')
hold on
title('Enzyme B, 1000')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,20)
plot(time,trial_20,'g-')
hold on
title('Enzyme B, 2000')
xlabel('time')
ylabel('concentration')
grid on
% Here is the enzyme C plot code
subplot(5,10,21)
plot(time,trial_31,'g-')
hold on
title('Enzyme C, 3.75')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,22)
plot(time,trial_32,'g-')
hold on
title('Enzyme C, 7.5')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,23)
plot(time,trial_33,'g-')
hold on
title('Enzyme C, 15')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,24)
plot(time,trial_34,'g-')
hold on
title('Enzyme C, 30')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,25)
plot(time,trial_35,'g-')
hold on
title('Enzyme C, 65')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,26)
plot(time,trial_36,'g-')
hold on
title('Enzyme C, 125')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,27)
plot(time,trial_37,'g-')
hold on
title('Enzyme C, 250')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,28)
plot(time,trial_38,'g-')
hold on
title('Enzyme C, 500')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,29)
plot(time,trial_39,'g-')
hold on
title('Enzyme C, 1000')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,30)
plot(time,trial_30,'g-')
hold on
title('Enzyme C, 2000')
xlabel('time')
ylabel('concentration')
grid on
% These are the plots for enzyme D
subplot(5,10,31)
plot(time,trial_41,'g-')
hold on
title('Enzyme D, 3.75')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,32)
plot(time,trial_42,'g-')
hold on
title('Enzyme D, 7.5')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,33)
plot(time,trial_43,'g-')
hold on
title('Enzyme D, 15')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,34)
plot(time,trial_44,'g-')
hold on
title('Enzyme D, 30')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,35)
plot(time,trial_45,'g-')
hold on
title('Enzyme D, 65')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,36)
plot(time,trial_46,'g-')
hold on
title('Enzyme D, 125')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,37)
plot(time,trial_47,'g-')
hold on
title('Enzyme D, 250')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,38)
plot(time,trial_48,'g-')
hold on
title('Enzyme D, 500')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,39)
plot(time,trial_49,'g-')
hold on
title('Enzyme D, 1000')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,40)
plot(time,trial_40,'g-')
hold on
title('Enzyme D, 2000')
xlabel('time')
ylabel('concentration')
grid on
% These are the plots for enzyme E
subplot(5,10,41)
plot(time,trial_51,'g-')
hold on
title('Enzyme E, 3.75')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,42)
plot(time,trial_52,'g-')
hold on
title('Enzyme E, 7.5')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,43)
plot(time,trial_53,'g-')
hold on
title('Enzyme E, 15')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,44)
plot(time,trial_54,'g-')
hold on
title('Enzyme E, 30')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,45)
plot(time,trial_55,'g-')
hold on
title('Enzyme E, 65')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,46)
plot(time,trial_56,'g-')
hold on
title('Enzyme E, 125')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,47)
plot(time,trial_57,'g-')
hold on
title('Enzyme E, 250')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,48)
plot(time,trial_58,'g-')
hold on
title('Enzyme E, 500')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,49)
plot(time,trial_59,'g-')
hold on
title('Enzyme E, 1000')
xlabel('time')
ylabel('concentration')
grid on

subplot(5,10,50)
plot(time,trial_50,'g-')
hold on
title('Enzyme E, 2000')
xlabel('time')
ylabel('concentration')
grid on



%% ____________________
%% RESULTS
trial_A=[trial_11,trial_12,trial_13,trial_14,trial_15,trial_16,trial_17,trial_18,trial_19,trial_10];
trial_B=[trial_21,trial_22,trial_23,trial_24,trial_25,trial_26,trial_27,trial_28,trial_29,trial_20];
trial_C=[trial_31,trial_32,trial_33,trial_34,trial_35,trial_36,trial_37,trial_38,trial_39,trial_30];
trial_D=[trial_41,trial_42,trial_43,trial_44,trial_45,trial_46,trial_47,trial_48,trial_49,trial_40];
trial_E=[trial_51,trial_52,trial_53,trial_54,trial_55,trial_56,trial_57,trial_58,trial_59,trial_50];


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



