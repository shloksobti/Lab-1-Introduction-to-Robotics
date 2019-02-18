%{
    Name: Shlok Sobti
    euler2ht.m
    Input(s): Z-Y-X Euler Angles
              Position Vector of {B} w.r.t. {A}
    Output(s): Homogenous Transform mapping {B} to {A}
               Inverse of the Homogenous Transform
%}

function [T,T_inv] = euler2ht(angles,pos)

%Defines the various Rotation Matrices
Rz = [cos(angles(1)) -sin(angles(1)) 0; sin(angles(1)) cos(angles(1)) 0; 0 0 1];
Ry = [cos(angles(2)) 0 sin(angles(2)); 0 1 0; -sin(angles(2)) 0 cos(angles(2))];
Rx = [1 0 0; 0 cos(angles(3)) -sin(angles(3)); 0 sin(angles(3)) cos(angles(3))];

R = Rz * Ry * Rx; %Defines the composite Rotation Matrix
P = pos; %Defines the position vector

T = [[R P]; 0 0 0 1]; %Defines the Transformation Matrix

R_inv = R';
P_inv = -R_inv * pos;

T_inv = [[R_inv P_inv]; 0 0 0 1]; %Defines the inverse Transform

end
