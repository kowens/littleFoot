
function bigFoot

  % game parameters
  global cmd;
  cmd = "null"; % set the initial keyboard command
  fps = 2;      % set the frame rate in frames per second
  dt  = 1/fps;  % set the frame delay seconds
  frame = 0;   % frame counter

  % Bigfoot parameters
  bigFootSize = 100;
  bigFootLineColor = [.55, .27, .07];
  bigFootLineWidth = 5;
  bigFootX = 500;
  bigFootY = 900;
  bigFootTheta = -pi/2;
  bigFootMaxJump = 50;
  bigFootMove = 50;
  bigFootThetaMove = pi;

  % Bat parameters
  batSize = 50;
  batColor = [0.2, 0, .8];
  batLineWidth = 3;
  batX = 950;
  batY = 300;
  batAngle = pi/6;
  batSpeed = 75;   % pixels per second
  batAngularSpeed = pi/2; % radians per second

  % draw background
  [maxX,maxY] = drawBackground("spookyForest.png");

 % start game loop
  while( cmd != 'k')

  %update the frame counter
    frame = frame + 1;

  % process keyboard command.
    if( cmd != "null")

       %act on the command
       if (cmd == 'd')
         bigFootX = bigFootX + bigFootMove;
       elseif(cmd =='a')
         bigFootX = bigFootX - bigFootMove;
       elseif (cmd == 's')
         bigFootTheta = bigFootTheta - bigFootThetaMove;
       endif

       %set the command back to null
        cmd = "null";

   endif

    % draw bigfoot
    bigFootHandle = drawBigFoot(bigFootX,bigFootY,bigFootTheta, ...
                    bigFootSize,bigFootLineColor,bigFootLineWidth);

    % compute bat's possible movement in dt
    batMove= batSpeed*dt;              %straight line motion
    batAngleMove = batAngularSpeed*dt; %angular motion

    %update the bat's position and angle
    batX = batX + batMove*cos(batAngle);
    batY = batY + batMove*sin(batAngle);
    batAngle = batAngle + rand*batAngleMove;

    % draw the bat
    batPose = mod(frame,2);
    batHandle = drawBat(batSize,batColor,batLineWidth,batPose, ...
                       batX,batY,batAngle);

    %pause between frames to allow graphics to display
    pause(dt);

    % delete current graphics
    delete(batHandle);
    delete(bigFootHandle);

  endwhile

  % clean up
  close all;

endfunction
