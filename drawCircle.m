function ellipse = getEllipse (xCenter,yCenter,xRadius,yRadius,numPoints)

  theta=[0:numPoints:360]*pi/180;

  ellipse(1,:) = xCenter + xRadius*cos(theta);
  ellipse(2,:) = yCenter + yRadius*sin(theta);
  ellipse(3,:1) = ones(1,numPoints);

endfunction
