clc
clear
close all

pick = [8 2 5];

place = [3 8 9];

steps = 50;

x = linspace(pick(1),place(1),steps);

y = linspace(pick(2),place(2),steps);

z = linspace(pick(3),place(3),steps);

trajectory = [];

figure

for i = 1:steps

    X = x(i);
    Y = y(i);
    Z = z(i);

    try

        [t1,t2,t3] = inverse_kinematics(X,Y,Z);

    catch

        continue

    end

    clf

    plot_robot(t1,t2,t3)

    hold on

    trajectory = [trajectory;
        X Y Z];

    plot3(trajectory(:,1),...
        trajectory(:,2),...
        trajectory(:,3),...
        'm','LineWidth',2)

    scatter3(pick(1),pick(2),pick(3),120,'filled','b')

    scatter3(place(1),place(2),place(3),120,'filled','r')

    title('3-DOF Pick and Place Simulation')

    drawnow

end