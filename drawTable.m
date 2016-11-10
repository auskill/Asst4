function drawTable()
%table belt model
tabSize = [1, 1, 2];
tabOrigin = [-0.75, -0.5, -2];

tabX=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*tabSize(1)+tabOrigin(1)+tabSize(1)/2;
tabY=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*tabSize(2)+tabOrigin(2)+tabSize(2)/2;
tabZ=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*tabSize(3)+tabOrigin(3)+tabSize(3)/2;


for i=1:6
    h=patch(tabX(:,i),tabY(:,i),tabZ(:,i),'g');
    set(h,'edgecolor','w')
end
end