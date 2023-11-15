function [a, v, x, t] = move_trajectory_calculations(tmax, dt, x0, x1)
t = 0:dt:tmax;
a = (6.*(2.*t - tmax).*(x0 - x1))./tmax.^3;
v = (6.*t.*(t - tmax).*(x0 - x1))./tmax.^3;
x = x0 + (t.^2.*(2.*t - 3.*tmax).*(x0 - x1))./tmax.^3;
end
