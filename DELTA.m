clc;
clear all;

%% Определение координат сферических шарниров j и ei
syms xe ye ze l1 l2 r0 re al real
syms q1 q2 q3 al1 al2 al3 real

SEpe = ET_T(xe, ye, ze);
SEpe1 = SEpe * ET_Rz(al1) * ET_Tx(re);
SEpe2 = SEpe * ET_Rz(al2) * ET_Tx(re);
SEpe3 = SEpe * ET_Rz(al3) * ET_Tx(re);

SEp0 = eye(4);
SEp1 = SEp0 * ET_Rz(al1) * ET_Tx(r0);
SEp2 = SEp0 * ET_Rz(al2) * ET_Tx(r0);
SEp3 = SEp0 * ET_Rz(al3) * ET_Tx(r0);

Trp1 = TrVec(SEp1)';
Trp2 = TrVec(SEp2)';
Trp3 = TrVec(SEp3)';
Trp = [Trp1; Trp2; Trp3];

SEj1 = SEp1 * ET_Ry(q1) * ET_Tx(l1);
SEj2 = SEp2 * ET_Ry(q2) * ET_Tx(l1);
SEj3 = SEp3 * ET_Ry(q3) * ET_Tx(l1);

Trj1 = TrVec(SEj1)';
Trj2 = TrVec(SEj2)';
Trj3 = TrVec(SEj3)';
Trj = [Trj1; Trj2; Trj3];

Tre1 = TrVec(SEpe1)';
Tre2 = TrVec(SEpe2)';
Tre3 = TrVec(SEpe3)';
Tre = [Tre1; Tre2; Tre3];

%% Определение уравнения для координаты из координат креплений основания и рабочего органа
syms xp yp zp real
syms xei yei zei real
syms q al real
syms a b c d real

Trp_sym = [xp yp zp];

Tre_sym = [xei yei zei];

SEp_sym = ET_T(xp, yp, zp) * ET_Rz(al);

SEj_sym = SEp_sym * ET_Ry(q) * ET_Tx(l1);

Trj_sym = TrVec(SEj_sym)';

eq_orig = simplify(expand(sum((Trj_sym - Tre_sym).^2) == l2^2));
eq = subs(eq_orig, cos(q), sqrt(1 - sin(q)^2));

%(a^(1/2)*xei - a^(1/2)*xp - l1^2*zei + l2^2*zei + l1^2*zp - l2^2*zp - xei^2*zei + xei^2*zp - xp^2*zei + xp^2*zp - yei^2*zei + yei^2*zp - yp^2*zei + yp^2*zp - 3*zei*zp^2 + 3*zei^2*zp - zei^3 + zp^3 + 2*xei*xp*zei - 2*xei*xp*zp + 2*yei*yp*zei - 2*yei*yp*zp)/(2*l1*(xei^2 - 2*xei*xp + xp^2 + zei^2 - 2*zei*zp + zp^2))
%(a^(1/2)*xei - a^(1/2)*xp + l1^2*zei - l2^2*zei - l1^2*zp + l2^2*zp + xei^2*zei - xei^2*zp + xp^2*zei - xp^2*zp + yei^2*zei - yei^2*zp + yp^2*zei - yp^2*zp + 3*zei*zp^2 - 3*zei^2*zp + zei^3 - zp^3 - 2*xei*xp*zei + 2*xei*xp*zp - 2*yei*yp*zei + 2*yei*yp*zp)/(2*l1*(xei^2 - 2*xei*xp + xp^2 + zei^2 - 2*zei*zp + zp^2))
%{
repl = [a, b, c, d];
repl_val = [- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4;
    xei^2*cos(al)^2 - 2*xei*xp*cos(al)^2 + sin(2*al)*xei*yei - sin(2*al)*xei*yp + xp^2*cos(al)^2 - sin(2*al)*xp*yei + sin(2*al)*xp*yp + yei^2*sin(al)^2 - 2*yei*yp*sin(al)^2 + yp^2*sin(al)^2 + zei^2 - 2*zei*zp + zp^2;
    xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al)];
%}
%{
syms var1 var2
repl = [var1, var2];
repl_val = [2*l1^2*xei^2 + 2*l2^2*xei^2 + 2*l1^2*xp^2 + 2*l2^2*xp^2 - 2*l1^2*yei^2 + 2*l2^2*yei^2 - 2*l1^2*yp^2 + 2*l2^2*yp^2 + 2*l1^2*zei^2 + 2*l2^2*zei^2 + 2*l1^2*zp^2 + 2*l2^2*zp^2 - 6*xei^2*xp^2 - 2*xei^2*yei^2 - 2*xei^2*yp^2 - 2*xp^2*yei^2 - 2*xp^2*yp^2 - 2*xei^2*zei^2 - 2*xei^2*zp^2 - 2*xp^2*zei^2 - 6*yei^2*yp^2 - 2*xp^2*zp^2 - 2*yei^2*zei^2 - 2*yei^2*zp^2 - 2*yp^2*zei^2 - 2*yp^2*zp^2 - 6*zei^2*zp^2 + 4*xei*xp^3 + 4*xei^3*xp + 4*yei*yp^3 + 4*yei^3*yp + 4*zei*zp^3 + 4*zei^3*zp - l1^4 - l2^4 - xei^4 - xp^4 - yei^4 - yp^4 - zei^4 - zp^4 + 2*l1^2*l2^2 - 4*l1^2*xei*xp - 4*l2^2*xei*xp + 4*l1^2*yei*yp - 4*l2^2*yei*yp - 4*l1^2*zei*zp - 4*l2^2*zei*zp + 4*xei*xp*yei^2 + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 + 4*xei^2*yei*yp + 4*xei*xp*zp^2 + 4*xp^2*yei*yp + 4*yei*yp*zei^2 + 4*xei^2*zei*zp + 4*yei*yp*zp^2 + 4*xp^2*zei*zp + 4*yei^2*zei*zp + 4*yp^2*zei*zp - 8*xei*xp*yei*yp - 8*xei*xp*zei*zp - 8*yei*yp*zei*zp;
            ((xei-xp)*(var1)^(1/2) - l1^2*zei + l2^2*zei + l1^2*zp - l2^2*zp - xei^2*zei + xei^2*zp - xp^2*zei + xp^2*zp - yei^2*zei + yei^2*zp - yp^2*zei + yp^2*zp - 3*zei*zp^2 + 3*zei^2*zp - zei^3 + zp^3 + 2*xei*xp*zei - 2*xei*xp*zp + 2*yei*yp*zei - 2*yei*yp*zp)/(l1*(xei^2 - 2*zei*zp - 2*xei*xp + xp^2 + zei^2 + zp^2))];
%}

q_sol = solve(eq, q, 'ReturnConditions',true)
%{
for i =1:length(repl)
    q_sol.q = subs(simplify(q_sol.q), repl_val(i), repl(i))
end
%}
q_sol.q
conditions = simplify(q_sol.conditions(1))
%}
%% Запись уравнения для координаты
%{
FID=fopen('q.m', 'W');
fprintf(FID, '%s\n', 'function q = q(l1, l2, xei, yei, zei, xp, yp, zp, al, a, b, c)');
fprintf(FID, '%s\n', 'k = 0;');
fprintf(FID, '%s\n', 'q = zeros(1,4);');
[n, m] = size(q_sol.q);
for j=1:n
    fprintf(FID, 'q(%1.0f) = %s;\n', [j simplify(q_sol.q(j))]);
end
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%% Запись уравнения для координаты c замещением
%{
FID=fopen('q_ideal.m', 'W');
fprintf(FID, '%s\n', 'function q = q_final(var)');
fprintf(FID, '%s\n', 'k = 0;');
fprintf(FID, '%s\n', 'q = zeros(1,4);');
[n, m] = size(q_sol.q);
for j=1:n
    fprintf(FID, 'q(%1.0f) = %s;\n', [j simplify(q_sol.q(j))]);
end
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%% Запись условия в файл
%{
FID=fopen('condition.m', 'W');
fprintf(FID, '%s\n', 'function [condition, l1, l2, xei, yei, zei, xp, yp, zp, al, a, b, c] = condition(l1, l2, xei, yei, zei, xp, yp, zp, al)');
for i=1:3
    fprintf(FID, '%s = %s;\n', [repl(i) repl_val(i)]);
end
fprintf(FID, 'condition = %s;\n', 'a >= 0 & b ~= 0 & c ~= 0');
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}

%% Создание файла получения координат всех необходимых точек
%{
FID=fopen('joint_coordinates.m', 'W');
fprintf(FID, '%s\n', 'function [xe1, ye1, ze1, xp1, yp1, zp1, al1, xe2, ye2, ze2, xp2, yp2, zp2, al2, xe3, ye3, ze3, xp3, yp3, zp3, al3] = joint_coordinates(r0, re, xe, ye, ze, al1, al2, al3)');
for i = 1:3
    fprintf(FID, 'xe%1.0f = %s;\n', [i Tre(i,1)]);
    fprintf(FID, 'ye%1.0f = %s;\n', [i Tre(i,2)]);
    fprintf(FID, 'ze%1.0f = %s;\n', [i Tre(i,3)]);
    fprintf(FID, 'xp%1.0f = %s;\n', [i Trp(i,1)]);
    fprintf(FID, 'yp%1.0f = %s;\n', [i Trp(i,2)]);
    fprintf(FID, 'zp%1.0f = %s;\n', [i Trp(i,3)]);
end
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}
%% Вывод уравнений для расчёта графиков
cond1 = repl_val(1) == 0;
ze_cond1 = solve(cond1, zei);

cond2 = repl_val(2) == 0;
ze_cond2 = solve(cond2, zei);

cond3 = repl_val(3) == 0;
ze_cond3 = solve(cond3, zei);

%% Создание файла для вывода графиков
%{
FID=fopen('plot_work_zone.m', 'W');
fprintf(FID, '%s\n', 'function plot_work_zone(x, y, l1, l2, xp, yp, zp, al)');
[n, m] = size(ze_cond1)
fprintf(FID, '%s;\n', '[xei, yei] = meshgrid(x, y)');
for i=1:n
    fprintf(FID, 'ze1%1.0f = %s;\n', [i ze_cond1(i)]);
end
fprintf(FID, '%s;\n', 'figure');
for i=1:n
    fprintf(FID, 'surf(xei,yei,real(ze1%1.0f));\n', i);
    if i == 1
        fprintf(FID, '%s;\n', 'hold on');
    end
end
[n, m] = size(ze_cond2)
for i=1:n
    fprintf(FID, 'ze2%1.0f = %s;\n', [i ze_cond2(i)]);
end
fprintf(FID, '%s;\n', 'figure');
for i=1:n
    fprintf(FID, 'surf(xei,yei,real(ze2%1.0f));\n', i);
    if i == 1
        fprintf(FID, '%s;\n', 'hold on');
    end
end
fprintf(FID, '%s\n', 'end');
fclose(FID);
%}