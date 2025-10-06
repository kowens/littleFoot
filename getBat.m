

function bat = getBat (batSize, batPose)

  % Bat diagram showing bat points
  %                    6\
  %                     \ \
  %                      \  \
  %                      7\   \ 5
  %                       /   /
  %                       /  /
  %                       / /
  %                       //          |2
  %           4-----------1-----------|   Bat's Head
  %                       \           |3
  %                       \ \
  %                       \  \
  %                     10\   \ 8
  %                       /   /
  %                       /  /
  %                       / /
  %                       //9

  %define default bat of all zeros.
  bat = zeros(3,10);

  if(batPose == 0)

  % Bat body
  bat(:,1)=[0;0;1];
  bat(:,2)=[batSize/2;batSize/10;1];
  bat(:,3)=[ -batSize/2;0;1];
  bat(:,4)=[batSize/2;-batSize/10;1];

 % left bat wing
  bat(:,5)=[batSize,batSize,1];
  bat(:,6)=[0,2*batSize,1];
  bat(:,7)=[batSize/2,batSize,1];

  %right bat wing
  bat(:,8)=[batSize,-batSize,1];
  bat(:,9)=[0,-2*batSize,1];
  bat(:,10)=[batSize/2,-batSize,1];

  endif

  if(batPose == 1)

   % Bat body
  bat(:,1)=[0;0;1];
  bat(:,2)=[batSize/2;batSize/10;1];
  bat(:,3)=[ -batSize/2;0;1];
  bat(:,4)=[batSize/2;-batSize/10;1];

 % left bat wing
  bat(:,5)=[batSize/2,batSize,1];
  bat(:,6)=[0,2*batSize,1];
  bat(:,7)=[batSize/4,batSize,1];

  %right bat wing
  bat(:,8)=[batSize/2,-batSize,1];
  bat(:,9)=[0,-2*batSize,1];
  bat(:,10)=[batSize/4,-batSize,1];

  endif

endfunction
