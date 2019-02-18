%{
    Name: Shlok Sobti
    yawr.m
    Input(s): Yaw Angle
    Output(s): Yaw Rotation Matrix
%}

function R_yaw = yawr(yaw)
R_yaw = [cos(yaw) -sin(yaw) 0; sin(yaw) cos(yaw) 0; 0 0 1];
end
