figure(1);



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

irb_120 = SerialLink(L, 'name', 'irb120');

qi = [0, 0, 0, 0, 0, 0];

irb_120.plot(qi); % Try using clear all at the top if the 0 pose does not respect the joint offsets.


drawCon()
drawTable()
drawArch()
drawCam()
drawPlank('w');

pause(2)
home = [0, 0, 0, 0, 0, 0]/180*pi;
irb_120.plot(home);

pause(1)

qt = [-15, 35, 0, 0, 0, 0]/180*pi;
irb_120.plot(qt);

qg1 = [-30, 35, 0, 0, 0, 0]/180*pi;
irb_120.plot(qg1);
pause(1)
qg2 = [45, 45, 0, 0, 0, 0]/180*pi;
irb_120.plot(qg2);
pause(1)
qg3 = [45, 45, -30 , 0, 30, 0]/180*pi;
irb_120.plot(qg3);
pause(1)
qg4 = [-30, 45, -30, 0, 30, 0]/180*pi;
irb_120.plot(qg4);


drawPlank('y')


