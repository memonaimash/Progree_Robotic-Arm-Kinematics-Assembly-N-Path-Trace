function plot_robot(theta1,theta2,theta3)

L1 = 5;
L2 = 8;
L3 = 6;

base = [0 0 0];

joint1 = [0 0 L1];

joint2 = [...
    L2*cos(theta2)*cos(theta1),...
    L2*cos(theta2)*sin(theta1),...
    L1+L2*sin(theta2)];

joint3 = [...
    cos(theta1)*(L2*cos(theta2)+L3*cos(theta2+theta3)),...
    sin(theta1)*(L2*cos(theta2)+L3*cos(theta2+theta3)),...
    L1+L2*sin(theta2)+L3*sin(theta2+theta3)];

plot3([base(1) joint1(1)],...
    [base(2) joint1(2)],...
    [base(3) joint1(3)],...
    'k','LineWidth',4)

hold on

plot3([joint1(1) joint2(1)],...
    [joint1(2) joint2(2)],...
    [joint1(3) joint2(3)],...
    'b','LineWidth',4)

plot3([joint2(1) joint3(1)],...
    [joint2(2) joint3(2)],...
    [joint2(3) joint3(3)],...
    'r','LineWidth',4)

scatter3(joint3(1),joint3(2),joint3(3),100,'filled','g')

xlabel('X')
ylabel('Y')
zlabel('Z')

grid on

axis equal

xlim([-15 15])
ylim([-15 15])
zlim([0 20])

view(45,30)

end