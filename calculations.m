clc;
clear all;

%% Создание модели
l1 = 1;
rl1 = 0.05;
l2 = 3;
rl2 = 0.01;
dl = 0.04;
rdl = 0.01;

r0 = 1;
re = 0.2;

phi0 = acos((l1+r0-re)/l2);
Ts = 0.001;

%% Пример расчёта координат приводов
%{
xe = 0
ye = 0
ze = -3.525
al1 = 0
al2 = 2*pi/3
al3 = -2*pi/3

[xe1, ye1, ze1, xp1, yp1, zp1, al1, xe2, ye2, ze2, xp2, yp2, zp2, al2, xe3, ye3, ze3, xp3, yp3, zp3, al3] = joint_coordinates(r0, re, xe, ye, ze, al1, al2, al3);
[condition1, l1, l2, xe1, ye1, ze1, xp1, yp1, zp1, al1, a1, b1, c1] = condition(l1, l2, xe1, ye1, ze1, xp1, yp1, zp1, al1)
[condition2, l1, l2, xe2, ye2, ze2, xp2, yp2, zp2, al2, a2, b2, c2] = condition(l1, l2, xe2, ye2, ze2, xp2, yp2, zp2, al2)
[condition3, l1, l2, xe3, ye3, ze3, xp3, yp3, zp3, al3, a3, b3, c3] = condition(l1, l2, xe3, ye3, ze3, xp3, yp3, zp3, al3)

q1 = q(l1, l2, xe1, ye1, ze1, xp1, yp1, zp1, al1, a1, b1, c1)
q2 = q(l1, l2, xe2, ye2, ze2, xp2, yp2, zp2, al2, a2, b2, c2)
q3 = q(l1, l2, xe3, ye3, ze3, xp3, yp3, zp3, al3, a3, b3, c3)
%}

%% Вывод рабочей зоны манипулятора
%{
plot_work_zone(-5:0.1:5, -5:0.1:5, l1, l2, 0, 0, 0, 0)
%}

%% Создание траекторий движения
%{
transfer_trajectory_equations()
%}

%% Вывод примера траектории движения
x0 = 0;
y0 = 0;
z0 = -2.4;
x1 = 1;
y1 = 1;
z1 = -3;
tmax = 1;
[ax, vx, x, t] = move_trajectory_calculations(tmax, 0.1, x0, x1);
[ay, vy, y, t] = move_trajectory_calculations(tmax, 0.1, y0, y1);
[az, vz, z, t] = move_trajectory_calculations(tmax, 0.1, z0, z1);
start_coord = [x; y; z];
start_t = t;
%{
figure
plot3(x, y, z)
grid on
%}
x0 = 1;
x1 = -1;
y0 = 1;
y1 = -1;
z0 = -3;
zmax = -2;
tmax = 2;
[az, vz, z, t] = carry_trajectory_calculations(tmax, 0.1, z0, zmax);
[ax, vx, x, t] = move_trajectory_calculations(tmax, 0.1, x0, x1);
[ay, vy, y, t] = move_trajectory_calculations(tmax, 0.1, y0, y1);
carry_coord = [x; y; z];
carry_t = t + start_t(end);
%{
figure
plot3(x, y, z)
grid on
%}
x0 = -1;
y0 = -1;
z0 = -3;
x1 = 0;
y1 = 0;
z1 = -2.4;
tmax = 1;
[ax, vx, x, t] = move_trajectory_calculations(tmax, 0.1, x0, x1);
[ay, vy, y, t] = move_trajectory_calculations(tmax, 0.1, y0, y1);
[az, vz, z, t] = move_trajectory_calculations(tmax, 0.1, z0, z1);
end_coord = [x; y; z];
end_t = t + carry_t(end);
coord = [start_coord carry_coord end_coord];
result_t = [start_t carry_t end_t];