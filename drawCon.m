function drawCon()
%conveyor belt model
conSize = [0.5, 4, 0.1];
conOrigin = [0.25,-1, -0.1];

conX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*conSize(1)+conOrigin(1)+conSize(1)/2;
conY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*conSize(2)+conOrigin(2)+conSize(2)/2;
conZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*conSize(3)+conOrigin(3)+conSize(3)/2;


for i=1:6
    h=patch(conX(:,i),conY(:,i),conZ(:,i),'k');
    set(h,'edgecolor','w')
end
end
