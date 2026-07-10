function [theta1,theta2,theta3] = inverse_kinematics(X,Y,Z)

L1 = 5;
L2 = 8;
L3 = 6;

theta1 = atan2(Y,X);

r = sqrt(X^2 + Y^2);

s = Z - L1;

D = (r^2 + s^2 - L2^2 - L3^2)/(2*L2*L3);

if abs(D) > 1

    error('Target point is outside the robot workspace.');

end

% Elbow-Up Solution

theta3 = atan2(sqrt(1-D^2),D);

theta2 = atan2(s,r) - atan2(L3*sin(theta3),L2+L3*cos(theta3));

end