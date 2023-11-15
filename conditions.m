function [condition1, condition2, condition3, xe1, ye1, ze1, xe2, ye2, ze2, xe3, ye3, ze3, xp1, yp1, zp1, xp2, yp2, zp2, xp3, yp3, zp3] = conditions(r0, re, l1, l2, xe, ye, ze)
k = 0;
xe1 = re + xe;
ye1 = ye;
ze1 = ze;
xp1 = r0;
yp1 = 0;
zp1 = 0;
xe2 = xe - re/2;
ye2 = ye + (3^(1/2)*re)/2;
ze2 = ze;
xp2 = -r0/2;
yp2 = (3^(1/2)*r0)/2;
zp2 = 0;
xe3 = xe - re/2;
ye3 = ye - (3^(1/2)*re)/2;
ze3 = ze;
xp3 = -r0/2;
yp3 = -(3^(1/2)*r0)/2;
zp3 = 0;
var1_1 = 2*l1^2*xe1^2 + 2*l2^2*xe1^2 + 2*l1^2*xp1^2 + 2*l2^2*xp1^2 - 2*l1^2*ye1^2 + 2*l2^2*ye1^2 - 2*l1^2*yp1^2 + 2*l2^2*yp1^2 + 2*l1^2*ze1^2 + 2*l2^2*ze1^2 + 2*l1^2*zp1^2 + 2*l2^2*zp1^2 - 6*xe1^2*xp1^2 - 2*xe1^2*ye1^2 - 2*xe1^2*yp1^2 - 2*xp1^2*ye1^2 - 2*xp1^2*yp1^2 - 2*xe1^2*ze1^2 - 2*xe1^2*zp1^2 - 2*xp1^2*ze1^2 - 6*ye1^2*yp1^2 - 2*xp1^2*zp1^2 - 2*ye1^2*ze1^2 - 2*ye1^2*zp1^2 - 2*yp1^2*ze1^2 - 2*yp1^2*zp1^2 - 6*ze1^2*zp1^2 + 4*xe1*xp1^3 + 4*xe1^3*xp1 + 4*ye1*yp1^3 + 4*ye1^3*yp1 + 4*ze1*zp1^3 + 4*ze1^3*zp1 - l1^4 - l2^4 - xe1^4 - xp1^4 - ye1^4 - yp1^4 - ze1^4 - zp1^4 + 2*l1^2*l2^2 - 4*l1^2*xe1*xp1 - 4*l2^2*xe1*xp1 + 4*l1^2*ye1*yp1 - 4*l2^2*ye1*yp1 - 4*l1^2*ze1*zp1 - 4*l2^2*ze1*zp1 + 4*xe1*xp1*ye1^2 + 4*xe1*xp1*yp1^2 + 4*xe1*xp1*ze1^2 + 4*xe1^2*ye1*yp1 + 4*xe1*xp1*zp1^2 + 4*xp1^2*ye1*yp1 + 4*ye1*yp1*ze1^2 + 4*xe1^2*ze1*zp1 + 4*ye1*yp1*zp1^2 + 4*xp1^2*ze1*zp1 + 4*ye1^2*ze1*zp1 + 4*yp1^2*ze1*zp1 - 8*xe1*xp1*ye1*yp1 - 8*xe1*xp1*ze1*zp1 - 8*ye1*yp1*ze1*zp1;
var1_2 = 2*l1^2*xe1^2 + 2*l2^2*xe1^2 + 2*l1^2*xp1^2 + 2*l2^2*xp1^2 - 2*l1^2*ye1^2 + 2*l2^2*ye1^2 - 2*l1^2*yp1^2 + 2*l2^2*yp1^2 + 2*l1^2*ze1^2 + 2*l2^2*ze1^2 + 2*l1^2*zp1^2 + 2*l2^2*zp1^2 - 6*xe1^2*xp1^2 - 2*xe1^2*ye1^2 - 2*xe1^2*yp1^2 - 2*xp1^2*ye1^2 - 2*xp1^2*yp1^2 - 2*xe1^2*ze1^2 - 2*xe1^2*zp1^2 - 2*xp1^2*ze1^2 - 6*ye1^2*yp1^2 - 2*xp1^2*zp1^2 - 2*ye1^2*ze1^2 - 2*ye1^2*zp1^2 - 2*yp1^2*ze1^2 - 2*yp1^2*zp1^2 - 6*ze1^2*zp1^2 + 4*xe1*xp1^3 + 4*xe1^3*xp1 + 4*ye1*yp1^3 + 4*ye1^3*yp1 + 4*ze1*zp1^3 + 4*ze1^3*zp1 - l1^4 - l2^4 - xe1^4 - xp1^4 - ye1^4 - yp1^4 - ze1^4 - zp1^4 + 2*l1^2*l2^2 - 4*l1^2*xe1*xp1 - 4*l2^2*xe1*xp1 + 4*l1^2*ye1*yp1 - 4*l2^2*ye1*yp1 - 4*l1^2*ze1*zp1 - 4*l2^2*ze1*zp1 + 4*xe1*xp1*ye1^2 + 4*xe1*xp1*yp1^2 + 4*xe1*xp1*ze1^2 + 4*xe1^2*ye1*yp1 + 4*xe1*xp1*zp1^2 + 4*xp1^2*ye1*yp1 + 4*ye1*yp1*ze1^2 + 4*xe1^2*ze1*zp1 + 4*ye1*yp1*zp1^2 + 4*xp1^2*ze1*zp1 + 4*ye1^2*ze1*zp1 + 4*yp1^2*ze1*zp1 - 8*xe1*xp1*ye1*yp1 - 8*xe1*xp1*ze1*zp1 - 8*ye1*yp1*ze1*zp1;
if var1_1 >= 0 && var1_2 >=0
    var1 = (xe1*(var1_1)^(1/2) - xp1*(var1_2)^(1/2) - l1^2*ze1 + l2^2*ze1 + l1^2*zp1 - l2^2*zp1 - xe1^2*ze1 + xe1^2*zp1 - xp1^2*ze1 + xp1^2*zp1 - ye1^2*ze1 + ye1^2*zp1 - yp1^2*ze1 + yp1^2*zp1 - 3*ze1*zp1^2 + 3*ze1^2*zp1 - ze1^3 + zp1^3 + 2*xe1*xp1*ze1 - 2*xe1*xp1*zp1 + 2*ye1*yp1*ze1 - 2*ye1*yp1*zp1)/(l1*(xe1^2 - 2*ze1*zp1 - 2*xe1*xp1 + xp1^2 + ze1^2 + zp1^2));
    condition1 = xe1^2 + xp1^2 + ze1^2 + zp1^2 ~= 2*xe1*xp1 + 2*ze1*zp1 & var1 >= -2 & var1 <= 2;
else
    condition1 = false;
end
var2_1 = 2*l1^2*xe2^2 + 2*l2^2*xe2^2 + 2*l1^2*xp2^2 + 2*l2^2*xp2^2 - 2*l1^2*ye2^2 + 2*l2^2*ye2^2 - 2*l1^2*yp2^2 + 2*l2^2*yp2^2 + 2*l1^2*ze2^2 + 2*l2^2*ze2^2 + 2*l1^2*zp2^2 + 2*l2^2*zp2^2 - 6*xe2^2*xp2^2 - 2*xe2^2*ye2^2 - 2*xe2^2*yp2^2 - 2*xp2^2*ye2^2 - 2*xp2^2*yp2^2 - 2*xe2^2*ze2^2 - 2*xe2^2*zp2^2 - 2*xp2^2*ze2^2 - 6*ye2^2*yp2^2 - 2*xp2^2*zp2^2 - 2*ye2^2*ze2^2 - 2*ye2^2*zp2^2 - 2*yp2^2*ze2^2 - 2*yp2^2*zp2^2 - 6*ze2^2*zp2^2 + 4*xe2*xp2^3 + 4*xe2^3*xp2 + 4*ye2*yp2^3 + 4*ye2^3*yp2 + 4*ze2*zp2^3 + 4*ze2^3*zp2 - l1^4 - l2^4 - xe2^4 - xp2^4 - ye2^4 - yp2^4 - ze2^4 - zp2^4 + 2*l1^2*l2^2 - 4*l1^2*xe2*xp2 - 4*l2^2*xe2*xp2 + 4*l1^2*ye2*yp2 - 4*l2^2*ye2*yp2 - 4*l1^2*ze2*zp2 - 4*l2^2*ze2*zp2 + 4*xe2*xp2*ye2^2 + 4*xe2*xp2*yp2^2 + 4*xe2*xp2*ze2^2 + 4*xe2^2*ye2*yp2 + 4*xe2*xp2*zp2^2 + 4*xp2^2*ye2*yp2 + 4*ye2*yp2*ze2^2 + 4*xe2^2*ze2*zp2 + 4*ye2*yp2*zp2^2 + 4*xp2^2*ze2*zp2 + 4*ye2^2*ze2*zp2 + 4*yp2^2*ze2*zp2 - 8*xe2*xp2*ye2*yp2 - 8*xe2*xp2*ze2*zp2 - 8*ye2*yp2*ze2*zp2;
var2_2 = 2*l1^2*xe2^2 + 2*l2^2*xe2^2 + 2*l1^2*xp2^2 + 2*l2^2*xp2^2 - 2*l1^2*ye2^2 + 2*l2^2*ye2^2 - 2*l1^2*yp2^2 + 2*l2^2*yp2^2 + 2*l1^2*ze2^2 + 2*l2^2*ze2^2 + 2*l1^2*zp2^2 + 2*l2^2*zp2^2 - 6*xe2^2*xp2^2 - 2*xe2^2*ye2^2 - 2*xe2^2*yp2^2 - 2*xp2^2*ye2^2 - 2*xp2^2*yp2^2 - 2*xe2^2*ze2^2 - 2*xe2^2*zp2^2 - 2*xp2^2*ze2^2 - 6*ye2^2*yp2^2 - 2*xp2^2*zp2^2 - 2*ye2^2*ze2^2 - 2*ye2^2*zp2^2 - 2*yp2^2*ze2^2 - 2*yp2^2*zp2^2 - 6*ze2^2*zp2^2 + 4*xe2*xp2^3 + 4*xe2^3*xp2 + 4*ye2*yp2^3 + 4*ye2^3*yp2 + 4*ze2*zp2^3 + 4*ze2^3*zp2 - l1^4 - l2^4 - xe2^4 - xp2^4 - ye2^4 - yp2^4 - ze2^4 - zp2^4 + 2*l1^2*l2^2 - 4*l1^2*xe2*xp2 - 4*l2^2*xe2*xp2 + 4*l1^2*ye2*yp2 - 4*l2^2*ye2*yp2 - 4*l1^2*ze2*zp2 - 4*l2^2*ze2*zp2 + 4*xe2*xp2*ye2^2 + 4*xe2*xp2*yp2^2 + 4*xe2*xp2*ze2^2 + 4*xe2^2*ye2*yp2 + 4*xe2*xp2*zp2^2 + 4*xp2^2*ye2*yp2 + 4*ye2*yp2*ze2^2 + 4*xe2^2*ze2*zp2 + 4*ye2*yp2*zp2^2 + 4*xp2^2*ze2*zp2 + 4*ye2^2*ze2*zp2 + 4*yp2^2*ze2*zp2 - 8*xe2*xp2*ye2*yp2 - 8*xe2*xp2*ze2*zp2 - 8*ye2*yp2*ze2*zp2;
if var2_1 >= 0 && var2_2 >=0
    var2 = (xe2*(var2_1)^(1/2) - xp2*(var2_2)^(1/2) - l1^2*ze2 + l2^2*ze2 + l1^2*zp2 - l2^2*zp2 - xe2^2*ze2 + xe2^2*zp2 - xp2^2*ze2 + xp2^2*zp2 - ye2^2*ze2 + ye2^2*zp2 - yp2^2*ze2 + yp2^2*zp2 - 3*ze2*zp2^2 + 3*ze2^2*zp2 - ze2^3 + zp2^3 + 2*xe2*xp2*ze2 - 2*xe2*xp2*zp2 + 2*ye2*yp2*ze2 - 2*ye2*yp2*zp2)/(l1*(xe2^2 - 2*ze2*zp2 - 2*xe2*xp2 + xp2^2 + ze2^2 + zp2^2));
    condition2 = xe2^2 + xp2^2 + ze2^2 + zp2^2 ~= 2*xe2*xp2 + 2*ze2*zp2 & var2 >= -2 & var2 <= 2;
else
    condition2 = false;
end
var3_1 = 2*l1^2*xe3^2 + 2*l2^2*xe3^2 + 2*l1^2*xp3^2 + 2*l2^2*xp3^2 - 2*l1^2*ye3^2 + 2*l2^2*ye3^2 - 2*l1^2*yp3^2 + 2*l2^2*yp3^2 + 2*l1^2*ze3^2 + 2*l2^2*ze3^2 + 2*l1^2*zp3^2 + 2*l2^2*zp3^2 - 6*xe3^2*xp3^2 - 2*xe3^2*ye3^2 - 2*xe3^2*yp3^2 - 2*xp3^2*ye3^2 - 2*xp3^2*yp3^2 - 2*xe3^2*ze3^2 - 2*xe3^2*zp3^2 - 2*xp3^2*ze3^2 - 6*ye3^2*yp3^2 - 2*xp3^2*zp3^2 - 2*ye3^2*ze3^2 - 2*ye3^2*zp3^2 - 2*yp3^2*ze3^2 - 2*yp3^2*zp3^2 - 6*ze3^2*zp3^2 + 4*xe3*xp3^3 + 4*xe3^3*xp3 + 4*ye3*yp3^3 + 4*ye3^3*yp3 + 4*ze3*zp3^3 + 4*ze3^3*zp3 - l1^4 - l2^4 - xe3^4 - xp3^4 - ye3^4 - yp3^4 - ze3^4 - zp3^4 + 2*l1^2*l2^2 - 4*l1^2*xe3*xp3 - 4*l2^2*xe3*xp3 + 4*l1^2*ye3*yp3 - 4*l2^2*ye3*yp3 - 4*l1^2*ze3*zp3 - 4*l2^2*ze3*zp3 + 4*xe3*xp3*ye3^2 + 4*xe3*xp3*yp3^2 + 4*xe3*xp3*ze3^2 + 4*xe3^2*ye3*yp3 + 4*xe3*xp3*zp3^2 + 4*xp3^2*ye3*yp3 + 4*ye3*yp3*ze3^2 + 4*xe3^2*ze3*zp3 + 4*ye3*yp3*zp3^2 + 4*xp3^2*ze3*zp3 + 4*ye3^2*ze3*zp3 + 4*yp3^2*ze3*zp3 - 8*xe3*xp3*ye3*yp3 - 8*xe3*xp3*ze3*zp3 - 8*ye3*yp3*ze3*zp3;
var3_2 = 2*l1^2*xe3^2 + 2*l2^2*xe3^2 + 2*l1^2*xp3^2 + 2*l2^2*xp3^2 - 2*l1^2*ye3^2 + 2*l2^2*ye3^2 - 2*l1^2*yp3^2 + 2*l2^2*yp3^2 + 2*l1^2*ze3^2 + 2*l2^2*ze3^2 + 2*l1^2*zp3^2 + 2*l2^2*zp3^2 - 6*xe3^2*xp3^2 - 2*xe3^2*ye3^2 - 2*xe3^2*yp3^2 - 2*xp3^2*ye3^2 - 2*xp3^2*yp3^2 - 2*xe3^2*ze3^2 - 2*xe3^2*zp3^2 - 2*xp3^2*ze3^2 - 6*ye3^2*yp3^2 - 2*xp3^2*zp3^2 - 2*ye3^2*ze3^2 - 2*ye3^2*zp3^2 - 2*yp3^2*ze3^2 - 2*yp3^2*zp3^2 - 6*ze3^2*zp3^2 + 4*xe3*xp3^3 + 4*xe3^3*xp3 + 4*ye3*yp3^3 + 4*ye3^3*yp3 + 4*ze3*zp3^3 + 4*ze3^3*zp3 - l1^4 - l2^4 - xe3^4 - xp3^4 - ye3^4 - yp3^4 - ze3^4 - zp3^4 + 2*l1^2*l2^2 - 4*l1^2*xe3*xp3 - 4*l2^2*xe3*xp3 + 4*l1^2*ye3*yp3 - 4*l2^2*ye3*yp3 - 4*l1^2*ze3*zp3 - 4*l2^2*ze3*zp3 + 4*xe3*xp3*ye3^2 + 4*xe3*xp3*yp3^2 + 4*xe3*xp3*ze3^2 + 4*xe3^2*ye3*yp3 + 4*xe3*xp3*zp3^2 + 4*xp3^2*ye3*yp3 + 4*ye3*yp3*ze3^2 + 4*xe3^2*ze3*zp3 + 4*ye3*yp3*zp3^2 + 4*xp3^2*ze3*zp3 + 4*ye3^2*ze3*zp3 + 4*yp3^2*ze3*zp3 - 8*xe3*xp3*ye3*yp3 - 8*xe3*xp3*ze3*zp3 - 8*ye3*yp3*ze3*zp3;
if var3_1 >= 0 && var3_2 >=0
    var3 = (xe3*(var3_1)^(1/2) - xp3*(var3_2)^(1/2) - l1^2*ze3 + l2^2*ze3 + l1^2*zp3 - l2^2*zp3 - xe3^2*ze3 + xe3^2*zp3 - xp3^2*ze3 + xp3^2*zp3 - ye3^2*ze3 + ye3^2*zp3 - yp3^2*ze3 + yp3^2*zp3 - 3*ze3*zp3^2 + 3*ze3^2*zp3 - ze3^3 + zp3^3 + 2*xe3*xp3*ze3 - 2*xe3*xp3*zp3 + 2*ye3*yp3*ze3 - 2*ye3*yp3*zp3)/(l1*(xe3^2 - 2*ze3*zp3 - 2*xe3*xp3 + xp3^2 + ze3^2 + zp3^2));
    condition3 = xe3^2 + xp3^2 + ze3^2 + zp3^2 ~= 2*xe3*xp3 + 2*ze3*zp3 & var3 >= -2 & var3 <= 2;
else
    condition3 = false;
end
end
