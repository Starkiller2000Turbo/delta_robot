function transfer_trajectory_equations()
%% Уравнения для переноса через преграду
%% Составление исходных уравнений
syms az0 az1 az2 t z0 zmax tmax real
az = az0 - az1*t + az2*t^2;
vz = int(az, t);
z = z0 + int(vz, t);

%% Определение a0 через максимальное значение tmax
vze = subs(vz, t, tmax);
az2_sol = solve(vze == 0, az2, 'ReturnConditions', true);
az2_eq = simplify(az2_sol.az2);
assume(az2_sol.conditions);

%% Замена a2 в уравнениях
az = simplify(subs(az, az2, az2_eq));
vz = simplify(subs(vz, az2, az2_eq));
z = simplify(subs(z, az2, az2_eq));

%% Определение коэффициента a1 значение в конце 
ze = simplify(subs(z, t, tmax));
az1_eq = simplify(solve(ze == z0, az1));

%% Замена a0 в уравнениях
az = simplify(subs(az, az1, az1_eq));
vz = simplify(subs(vz, az1, az1_eq));
z = simplify(subs(z, az1, az1_eq));

%% Определение уравнения textr
tvz_0 = solve(vz == 0,t);
textr_eq = tvz_0(3);
zextr = simplify(subs(z, t, textr_eq));
az0_sol = solve(zextr == zmax, az0, 'ReturnConditions',true);
az0_eq = simplify(az0_sol.az0);
az0_sol.conditions;

%% Замена az2 в уравнениях
az = simplify(subs(az, az0, az0_eq));
vz = simplify(subs(vz, az0, az0_eq));
z = simplify(subs(z, az0, az0_eq));

%% Уравнение для перемещения в точку
%% Составление уравнений ax
syms ax0 ax1 x0 x1 real
ax = ax0 - ax1*t;

%% Уравнения скорости vx
vx = int(ax);
vxe = int(ax, 0, tmax);
ax1_vxe_0 = solve(vxe == 0, ax1, 'ReturnConditions',true);
ax1_eq = ax1_vxe_0.ax1;

%% Замена в а1 уравнениях vx, ax
ax = simplify(subs(ax, ax1, ax1_eq));
vx = simplify(subs(vx, ax1, ax1_eq));

%% Составление уравнения координат x
x = x0 + int(vx);
xe = x0 + int(vx, 0, tmax);
ax0_eq = solve(xe==x1, ax0);

%% Замена a0 в уравнениях ax, vx, x
ax = vectorize(simplify(subs(ax, ax0, ax0_eq)));
vx = vectorize(simplify(subs(vx, ax0, ax0_eq)));
x = vectorize(simplify(subs(x, ax0, ax0_eq)));

%% Запись уравнений z в файл
%}
%
FID=fopen('move_trajectory_calculations.m', 'W');
fprintf(FID, '%s\n', 'function [a, v, x, t] = move_trajectory_calculations(tmax, dt, x0, x1)');
fprintf(FID, '%s;\n', 't = 0:dt:tmax');
fprintf(FID, '%s = %s;\n', 'a', ax);
fprintf(FID, '%s = %s;\n', 'v', vx);
fprintf(FID, '%s = %s;\n', 'x', x);
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%
FID=fopen('carry_trajectory_calculations.m', 'W');
fprintf(FID, '%s\n', 'function [a, v, z, t] = carry_trajectory_calculations(tmax, dt, z0, zmax)');
fprintf(FID, '%s;\n', 't = 0:dt:tmax');
fprintf(FID, '%s = %s;\n', 'a', vectorize(az));
fprintf(FID, '%s = %s;\n', 'v', vectorize(vz));
fprintf(FID, '%s = %s;\n', 'z', vectorize(z));
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%{
FID=fopen('coeffs_trajectory_calculations.m', 'W');
fprintf(FID, '%s\n', 'end');
fclose(FID);
FID=fopen('coeffs_trajectory_calculations.m', 'W');
fprintf(FID, '%s\n', 'function [a01, a02, a03, a04, a11, a12, a13, a14, a21, a22, a23, a24] = coeffs_trajectory_calculations(tmax, dt, x0, x1, xmax)');
fprintf(FID, '%s;\n', 't = 0:dt:tmax');
[n, m] = size(a)
for i=1:n
    fprintf(FID, '%s%1.0f = %s;\n', 'a0', i, vectorize(a0_eq(i)));
    fprintf(FID, '%s%1.0f = %s;\n', 'a1', i, vectorize(a1_eq(i)));
    fprintf(FID, '%s%1.0f = %s;\n', 'a2', i, vectorize(a2_eq(i)));
end
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%}
%}

