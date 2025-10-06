function handle = drawPoly(xCenter,yCenter,radius,lineWidth,lineColor,lineSegments)

  dTheta = 360/lineSegments;
  theta=[0:dTheta:360]*pi/180;

  x = xCenter + radius*cos(theta);
  y = yCenter + radius*sin(theta);

  handle = line(x,y);
  set(handle,"LineWidth",lineWidth);
  set(handle,"Color",lineColor);

endfunction
