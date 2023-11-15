function [a, v, z, t] = carry_trajectory_calculations(tmax, dt, z0, zmax)
t = 0:dt:tmax;
a = -(32.*(z0 - zmax).*(6.*t.^2 - 6.*t.*tmax + tmax.^2))./tmax.^4;
v = -(32.*t.*(2.*t - tmax).*(t - tmax).*(z0 - zmax))./tmax.^4;
z = z0 - (t.^2.*((192.*(z0 - zmax))./tmax.^2 - (384.*t.*(z0 - zmax))./tmax.^3 + (192.*t.^2.*(z0 - zmax))./tmax.^4))./12;
end
