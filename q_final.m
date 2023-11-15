function q = q_final(var)
k = 0;
q = zeros(1,4);
q(1) = asin(var/2) + 2*k*pi;
q(2) = 2*k*pi - asin(var/2);
q(3) = pi - asin(var/2) + 2*k*pi;
q(4) = pi + asin(var/2) + 2*k*pi;
end
