function drawArch()
%arch  model
archSize = [1, 0.25, 0.1];
archOrigin = [0,0.75, 0.5];

archX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*archSize(1)+archOrigin(1)+archSize(1)/2;
archY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*archSize(2)+archOrigin(2)+archSize(2)/2;
archZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*archSize(3)+archOrigin(3)+archSize(3)/2;


for i=1:6
    h=patch(archX(:,i),archY(:,i),archZ(:,i),'b');
    set(h,'edgecolor','w')
end

archSize = [0.2, 0.25, 2];
archOrigin = [0,0.75, -1.5];

archX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*archSize(1)+archOrigin(1)+archSize(1)/2;
archY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*archSize(2)+archOrigin(2)+archSize(2)/2;
archZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*archSize(3)+archOrigin(3)+archSize(3)/2;


for i=1:6
    h=patch(archX(:,i),archY(:,i),archZ(:,i),'b');
    set(h,'edgecolor','w')
end


archSize = [0.2, 0.25, 2];
archOrigin = [0.8,0.75, -1.5];

archX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*archSize(1)+archOrigin(1)+archSize(1)/2;
archY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*archSize(2)+archOrigin(2)+archSize(2)/2;
archZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*archSize(3)+archOrigin(3)+archSize(3)/2;


for i=1:6
    h=patch(archX(:,i),archY(:,i),archZ(:,i),'b');
    set(h,'edgecolor','w')
end
end