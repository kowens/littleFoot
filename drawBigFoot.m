

function handle = drawBigFoot (xPos,yPos,theta,bodySize,lineColor,lineWidth)
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

  bigFoot = getBigFoot(bodySize);

  T = getTranslate(xPos,yPos);
  R = getRotate(theta);

  bigFoot = T*R*bigFoot;

  p1 = bigFoot(:,1);
  p2 = bigFoot(:,2);

  p3 = bigFoot(:,3);
  p4 = bigFoot(:,4);
  p5 = bigFoot(:,5);

  p6 = bigFoot(:,6);
  p7 = bigFoot(:,7);
  p8 = bigFoot(:,8);

  p9  = bigFoot(:,9);
  p10 = bigFoot(:,10);
  p11 = bigFoot(:,11);
  p12 = bigFoot(:,12);

hold on

%draw body
handle1 =  drawLine(p1,p2,lineColor,lineWidth);

%draw right foot
rightFootX=[p1(1),p3(1),p5(1)];
rightFootY=[p1(2),p3(2),p5(2)];
handle2 = fill(rightFootX,rightFootY,lineColor);

%draw left foot
leftFootX=[p1(1),p6(1),p8(1)];
leftFootY=[p1(2),p6(2),p8(2)];
handle3 = fill(leftFootX,leftFootY,lineColor);

%draw head
headX=[p9(1),p10(1),p11(1),p12(1)];
headY=[p9(2),p10(2),p11(2),p12(2)];
handle4 = fill(headX,headY,lineColor);

hold off

handle = [handle1,handle2,handle3,handle4];

endfunction
