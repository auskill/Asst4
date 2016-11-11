function drawPlank(colour)
%plank model
conSize = [0.1, 0.8, 0.2];
conOrigin = [0.4,-0.25, 0];

conX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*conSize(1)+conOrigin(1)+conSize(1)/2;
conY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*conSize(2)+conOrigin(2)+conSize(2)/2;
conZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*conSize(3)+conOrigin(3)+conSize(3)/2;


for i=1:6
    h=patch(conX(:,i),conY(:,i),conZ(:,i),colour);
    set(h,'edgecolor','k')
end
end
