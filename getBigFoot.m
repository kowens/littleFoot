function bigFoot = getBigFoot (bodySize)

 %           bigFoot

 %          right foot
 %          5___4___3
 %           \     /
 %            \   /               9--10
 %             \ /                |   |
 %              1======(0,0)======2   | Head -------> x
 %             / \       |        |   |
 %            /   \      |        12-11
 %           /     \     |
 %          8___7___6    |
 %           left foot   \/
 %                       y
 %
 %


%define bigFoot body
bodyHeight = bodySize;
bodyWidth  = bodySize/4;
footWidth  = bodySize/4;
footLength = bodySize;
headSize   = bodySize/2;

%bigfoot body
p1 = [-bodySize/2;0;1];
p2 = [bodySize/2;0;1];

%right foot
p3 = [footWidth/2-bodySize/2;    -footLength;  1];
p4 = [-bodySize/2;               -footLength;  1];
p5 = [-footWidth/2-bodySize/2;   -footLength;  1];

%left foot
p6 = [footWidth/2-bodySize/2;    footLength;1];
p7 = [-bodySize/2;               footLength;1];
p8 = [-footWidth/2-bodySize/2;   footLength;1];

%head
p9  = [bodySize/2;-headSize;1];
p10 = [headSize+bodySize/2; -headSize;1];
p11 = [headSize+bodySize/2;headSize;1];
p12 = [bodySize/2;headSize;1];

bigFoot = [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12];

endfunction
