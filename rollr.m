%{
    Name: Shlok Sobti
    rollr.m
    Input(s): Roll Angle
    Output(s): Roll Rotation Matrix
%}

function R_roll = rollr(roll)
R_roll = [1 0 0; 0 cos(roll) -sin(roll); 0 sin(roll) cos(roll)];
end
