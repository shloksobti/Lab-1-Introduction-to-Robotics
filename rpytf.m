%{
    Name: Shlok Sobti
    rpytf.m
    Input(s): 6 Vector Twist of the form [px py pz, roll, pitch, yaw]
    Output(s): Transformation Matrix
%}

function T = rpytf(twist)

R = rpyr(twist(4:6));
P = [twist(1:3)]';
T = eye(4);
T(1:3,1:3) = R;
T(1:3,4) = P;

end
