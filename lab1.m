%{
    The following script is meant for test purposes. It calls the functions
    created earlier and tests them with various inputs, and uses
    visualization to check them.
%}
% rotate.m

P_B = [1 1 1]'; %The input is defined as a vector P with respect to {B}.
[P_A, R] = rotate(P_B); %The output describes P with respect to {A}.
P_A
T = eye(4);
T(1:3,1:3) = R;
drawFrame( T, [0 1 0]); %Draws the rotated frame {B}
title('Rotation Mapping')

clear all


% euler2ht.m

angles = [pi/2 0 pi]; %Defines Euler Angles
pos = [1 1 1]'; %Defines Position vector
[T,T_inv] = euler2ht(angles,pos); %Calls euler2ht function
drawFrame( T, [0 0 1]); %Draws the euler transformation
title('Homogenous Transform Mapping')
drawFrame( T_inv, [0 0 1]);
title('Inverse Homogenous Transform Mapping')

clear all



% rollr.m

roll = pi/2;
R_roll = rollr(roll);
T = eye(4);
T(1:3,1:3) = R_roll;
drawFrame( T, [1 0 1]);
title('Roll Mapping')

clear all



% pitchr.m

pitch = pi/2;
R_pitch = pitchr(pitch);
T = eye(4);
T(1:3,1:3) = R_pitch;
drawFrame( T, [0 0 1]);
title('Pitch Mapping')

clear all



% yawr.m
yaw = pi/2;
R_yaw =  yawr(yaw);
T = eye(4);
T(1:3,1:3) = R_yaw;
drawFrame( T, [0 0 1]);
title('Yaw Mapping')

clear all


% rpyr.m
angles = [pi/2 pi/2 pi/2];
R_fixed =  rpyr(angles);
T = eye(4);
T(1:3,1:3) = R_fixed;
drawFrame( T, [0 0 1]); 
title('Fixed Roll, Pitch, Yaw Mapping')

clear all


% rpytf.m
twist = [1 1 1 pi/2 pi/2 pi/2];
T =  rpytf(twist);
drawFrame( T, [0 0 1]);
title('General Transformation Mapping')

clear all


% screwtf.m
translation = 2;
rotation = pi/2;
ax = [1 1 1];

drawScrew(translation, rotation, ax, [0 0 1]); 
title('Screw Transform Mapping')

clear all


% phantomFK.m
drawPhantom([0 0 0], [0 0 0]) %Draws the phantom in its zero position
title('PHANTom in its zero position')

movePhantom('phantom_path.mat')
title('PHANTom with a path input')
