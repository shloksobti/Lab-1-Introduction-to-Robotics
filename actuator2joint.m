%{
    Name: Shlok Sobti
    actuator2joint.m
    Input(s): 1x3 Vector of Motor Angles
    Output(s): 1x3 PHANTom Joint Angles
%}
function [joint_angles] = actuator2joint(actuator_angles)

TR1 = - 7.5/60; % Defines the Transmission Ratios using the measured 
TR2 = - 5/40;   % radii. The negative signs account for opposing motion.
TR3 = TR2;

joint_angles = []; % Initializes joint_angles.

%Defines the elements of joint_angles using simple geometry.
joint_angles(1) = actuator_angles(1) * TR1;
joint_angles(2) = actuator_angles(2) * TR2;
joint_angles(3) = TR3 * actuator_angles(3) - TR2 * actuator_angles(2);

end
