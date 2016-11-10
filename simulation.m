%%%%%%%%%%%%%
% MTRN4230 PSE2 solution
% Investigate the kinematics of the IRB120
% Mark Whitty
% 160312
% Adapted from Corke ch 9.
clear variables; close all; clc; % Take care to clear variables or else elements of L may not be overwritten correctly - maybe a Matlab optimiser problem.
% Initialise all link kinematics
L(1) = Link([0 0.290 0 pi/2]);  
L(1).offset = pi;   % Offsets are needed so the home position matches what is defined on the robot
L(2) = Link([0 0 0.270 0]); 
L(2).offset = pi/2;
L(3) = Link([0 0 0.07 -pi/2]); 
L(3).offset = 0;
L(4) = Link([0 0.302 0 pi/2]); 
L(4).offset = 0;
L(5) = Link([pi 0 0 pi/2]); 
L(5).offset = pi;
L(6) = Link([0 0.137 0 0]); 
L(6).offset = 0;

irb_120 = SerialLink(L, 'name', 'irb120')

qi = [0, 0, 0, 0, 0, 0];

T = irb_120.fkine(qi)
figure(1);
irb_120.plot(qi); % Try using clear all at the top if the 0 pose does not respect the joint offsets.
pause(1);

hold on;
plot3(-10,-10,-10);

q1 = [0, 6.5, 68.8, 0, 14.7, 0]/180*pi;
q2 = [-71.4, 70.3, -39.0, 0, 58.7,-71.4]/180*pi;
q3 = [71.4, 70.3, -39.0, 0, 58.7, 71.4]/180*pi;
T1 = irb_120.fkine(q1);
T2 = irb_120.fkine(q2);
T3 = irb_120.fkine(q3);

irb_120.plot(q1);
pause(1)


irb_120.plot(q2);
pause(1)
irb_120.plot(q3);
pause(1)

q10degree = [10, 10, 10, 10, 10, 10]/180*pi;
irb_120.plot(q10degree);
pause(1);

quat4 = Quaternion([0, 0, 1, 0])
T4 = r2t(quat4.R)
T4(1:3, 4) = [0.547, 0, 0.147]'
q4 = irb_120.ikine(T4)
irb_120.plot(q4);



