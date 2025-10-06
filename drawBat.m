function batHandle = drawBat (batSize,batColor,batLineWidth,batPose, ...
                              batDeltaX,batDeltaY,batTheta)

  % Get the bat in standard position
  bat = getBat(batSize,batPose);

  % get the matrix to rotate the bat
  R = getRotate(batTheta);

  % Get the bat's translation matrix
  T = getTranslate(batDeltaX,batDeltaY);

  %Rotate and traslate the bat
  bat = T*R*bat;

  % Bat body
  p1=bat(:,1);
  p2=bat(:,2);
  p3=bat(:,3);
  p4=bat(:,4);

 % left bat wing
  p5=bat(:,5);
  p6=bat(:,6);
  p7=bat(:,7);

  %right bat wing
  p8=bat(:,8);
  p9=bat(:,9);
  p10=bat(:,10);

  hold on

  %fill bat's body
  batBodyX=[p2(1),p3(1),p4(1)];
  batBodyY=[p2(2),p3(2),p4(2)];
  handle1=fill(batBodyX,batBodyY,batColor);

  %fill bat's left wing
  batWingLeftX=[p1(1),p5(1),p6(1),p7(1),p1(1)];
  batWingLeftY=[p1(2),p5(2),p6(2),p7(2),p1(2)];
  handle2=fill(batWingLeftX,batWingLeftY,batColor);

  %fill bat's right
  batWingRrightX=[p1(1),p8(1),p9(1),p10(1),p1(1)];
  batWingRrightY=[p1(2),p8(2),p9(2),p10(2),p1(2)];
  handle3=fill(batWingRrightX,batWingRrightY,batColor);

  hold off

  % populate return vector with line handles of the bat
  batHandle=[handle1,handle2,handle3];

endfunction
