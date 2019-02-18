%{
    Name: Shlok Sobti
    pitchr.m
    Input(s): Pitch Angle
    Output(s): Pitch Rotation Matrix
%}

function R_pitch = pitchr(pitch) 
R_pitch = [cos(pitch) 0 sin(pitch); 0 1 0; -sin(pitch) 0 cos(pitch)];
end
