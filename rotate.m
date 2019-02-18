%{
    Name: Shlok Sobti
    rotate.m
    Input(s): Position Vector P_B
    Output(s): Vector P_A referenced to {A}
%}

function [P_A R_yz] = rotate(P_B)

Ry = [cos(pi/2) 0 sin(pi/2); 0 1 0; -sin(pi/2) 0 cos(pi/2)];
Rz = [cos(pi/4) -sin(pi/4) 0; sin(pi/4) cos(pi/4) 0; 0 0 1];
R_yz = Ry * Rz;

P_A = R_yz * P_B;
end