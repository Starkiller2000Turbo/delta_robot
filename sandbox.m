syms x1 y1 x2 y2 real
eq1 = x1 + y1*1i;
eq2 = x2 + y2*1i;
expand(eq1*eq2)
c = xei^2*cos(al)^2 - 2*xei*xp*cos(al)^2 + sin(2*al)*xei*yei - sin(2*al)*xei*yp + xp^2*cos(al)^2 - sin(2*al)*xp*yei + sin(2*al)*xp*yp + yei^2*sin(al)^2 - 2*yei*yp*sin(al)^2 + yp^2*sin(al)^2 + zei^2 - 2*zei*zp + zp^2
d = 2*l1*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1)*c
b = - l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4
a = - l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4
a = - l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4
a = - l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4
q = asin((zp^3*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - zei^3*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + l1*xei^2*cos(al)^2*(a)^(1/2) + l1*xp^2*cos(al)^2*()^(1/2) + l1*yei^2*sin(al)^2*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) + l1*yp^2*sin(al)^2*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) - l1^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + l2^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + l1^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - l2^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - xei^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + xei^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - xp^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + xp^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - yei^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + yei^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - yp^2*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + yp^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - 3*zei*zp^2*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + 3*zei^2*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - 2*l1*xei*xp*cos(al)^2*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) + l1*xei*yei*sin(2*al)*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) - l1*xei*yp*sin(2*al)*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) - l1*xp*yei*sin(2*al)*(- l1^4 + 2*l1^2*l2^2 + 2*cos(2*al)*l1^2*xei^2 - 4*cos(2*al)*l1^2*xei*xp + 4*sin(2*al)*l1^2*xei*yei - 4*sin(2*al)*l1^2*xei*yp + 2*cos(2*al)*l1^2*xp^2 - 4*sin(2*al)*l1^2*xp*yei + 4*sin(2*al)*l1^2*xp*yp - 2*cos(2*al)*l1^2*yei^2 + 4*cos(2*al)*l1^2*yei*yp - 2*cos(2*al)*l1^2*yp^2 + 2*l1^2*zei^2 - 4*l1^2*zei*zp + 2*l1^2*zp^2 - l2^4 + 2*l2^2*xei^2 - 4*l2^2*xei*xp + 2*l2^2*xp^2 + 2*l2^2*yei^2 - 4*l2^2*yei*yp + 2*l2^2*yp^2 + 2*l2^2*zei^2 - 4*l2^2*zei*zp + 2*l2^2*zp^2 - xei^4 + 4*xei^3*xp - 6*xei^2*xp^2 - 2*xei^2*yei^2 + 4*xei^2*yei*yp - 2*xei^2*yp^2 - 2*xei^2*zei^2 + 4*xei^2*zei*zp - 2*xei^2*zp^2 + 4*xei*xp^3 + 4*xei*xp*yei^2 - 8*xei*xp*yei*yp + 4*xei*xp*yp^2 + 4*xei*xp*zei^2 - 8*xei*xp*zei*zp + 4*xei*xp*zp^2 - xp^4 - 2*xp^2*yei^2 + 4*xp^2*yei*yp - 2*xp^2*yp^2 - 2*xp^2*zei^2 + 4*xp^2*zei*zp - 2*xp^2*zp^2 - yei^4 + 4*yei^3*yp - 6*yei^2*yp^2 - 2*yei^2*zei^2 + 4*yei^2*zei*zp - 2*yei^2*zp^2 + 4*yei*yp^3 + 4*yei*yp*zei^2 - 8*yei*yp*zei*zp + 4*yei*yp*zp^2 - yp^4 - 2*yp^2*zei^2 + 4*yp^2*zei*zp - 2*yp^2*zp^2 - zei^4 + 4*zei^3*zp - 6*zei^2*zp^2 + 4*zei*zp^3 - zp^4)^(1/2) + l1*xp*yp*sin(2*al)*()^(1/2) - 2*l1*yei*yp*sin(al)^2*()^(1/2) + 2*xei*xp*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - 2*xei*xp*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) + 2*yei*yp*zei*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1) - 2*yei*yp*zp*abs(xei*cos(al) - xp*cos(al) + yei*sin(al) - yp*sin(al))*abs(l1))/d) + 2*k*pi