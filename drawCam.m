function drawCam()
%arch  model
camSize = [0.1, 0.1, 0.1];
camOrigin = [0.45,0.8, 0.4];

camX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*camSize(1)+camOrigin(1)+camSize(1)/2;
camY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*camSize(2)+camOrigin(2)+camSize(2)/2;
camZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*camSize(3)+camOrigin(3)+camSize(3)/2;


for i=1:6
    h=patch(camX(:,i),camY(:,i),camZ(:,i),'r');
    set(h,'edgecolor','w')
end

