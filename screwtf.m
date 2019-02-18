%{
    Name: Shlok Sobti
    screwtf.m
    Input(s): Translation Vector
              Rotation Angle about given Axis
              Rotation and Translation Axis
    Output(s): Screw Transformation Matrix
%}

function T_screw = screwtf(translation,rotation,ax)

ax = ax/norm(ax); %Normalizes given Axis

P = translation * ax; %Defines the Position Vecor

%Euler Parameters
e1 = ax(1) * sin(rotation/2);
e2 = ax(2) * sin(rotation/2);
e3 = ax(3) * sin(rotation/2);
e4 = cos(rotation/2);

%Defines the Rotation Matrix based upon the Euler Parameters
R = [1-2*e2^2-2*e3^2 2*(e1*e2-e3*e4) 2*(e1*e3+e2*e4); 
    2*(e1*e2+e3*e4) 1-2*e1^2-2*e3^2 2*(e2*e3-e1*e4); 
    2*(e1*e3-e2*e4) 2*(e2*e3+e1*e4) 1-2*e1^2-2*e2^2];

%Defines the Transform as a composite of R and P
T_screw = eye(4);
T_screw(1:3,1:3) = R;
T_screw(1:3,4) = P;

end
