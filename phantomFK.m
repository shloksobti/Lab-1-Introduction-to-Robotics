%{
    Name: Shlok Sobti
    phantomFK.m
    Input(s): 1x3 Vector of Joint Angles
              1x3 Vector of Gimbal Angles (Roll, Pitch, Yaw)
    Output(s): 4x4 Homogenous Transformation Matrix
               Cell Array of 4x4 Transformations
%}
function [phantom_T_0_g, phantom_T]= phantomFK(joint_angles, gimbal_angles)
%Defines Link Lengths
L1 = 139;
L2 = 140;
L3 = 64;

%Defines the Transformation Matrices
T0_1 = screwDH(0,   0,    L1, joint_angles(1));
T1_2 = screwDH(0,  pi/2,  0,  joint_angles(2));
T2_3 = screwDH(L2,  0,    0,  joint_angles(3));
T3_e = screwDH(0,  pi/2,  L3,     0);
 
Te_g = rpytf([0,0,0,gimbal_angles]);

phantom_T = {T0_1 T1_2 T2_3 T3_e Te_g};

phantom_T_0_g = T0_1 * T1_2 * T2_3 * T3_e * Te_g;
end
