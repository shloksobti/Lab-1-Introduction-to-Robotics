%{
    Name: Shlok Sobti
    rpyr.m
    Input(s):  1x3 Vector of Angles
    Output(s): Fixed Rotation Matrix
%}

function R_fixed = rpyr(angles)

R_fixed = yawr(angles(3)) * pitchr(angles(2)) * rollr(angles(1));

end
