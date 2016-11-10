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

q1 = [0, 6.5, 68.8, 0, 14.7, 0]/180*pi;
irb_120.plot(q1);