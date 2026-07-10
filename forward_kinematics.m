function T = forward_kinematics(theta1,theta2,theta3)

L1 = 5;
L2 = 8;
L3 = 6;

A1 = dh_transform(theta1,L1,0,pi/2);

A2 = dh_transform(theta2,0,L2,0);

A3 = dh_transform(theta3,0,L3,0);

T = A1*A2*A3;

end