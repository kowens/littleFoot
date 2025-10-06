
function lineHandle = drawLine (point1,point2,lineColor,lineWidth)

  x = [point1(1),point2(1)];
  y = [point1(2),point2(2)];

  lineHandle = line(x,y);

  set(lineHandle,'Color',lineColor);
  set(lineHandle,'LineWidth',lineWidth);

endfunction
