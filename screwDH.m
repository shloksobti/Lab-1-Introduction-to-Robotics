%{
    Name: Shlok Sobti
    screwDH.m
    Input(s): DH Parameters - a, alpha, d, theta
    Output(s): DH Transformation Matrix
%}

function T_DH = screwDH(a, alpha, d, theta)
X = [1;0;0]; % Defines X and Y axis
Z = [0;0;1];
T_DH = screwtf(a,alpha,X) * screwtf(d, theta, Z);
end
